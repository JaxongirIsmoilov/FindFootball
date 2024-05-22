import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/widgets/custom_button.dart';
import 'package:find_football/src/features/auth/login/presentation/login_bloc/login_bloc.dart';
import 'package:find_football/src/features/auth/login/presentation/login_bloc/login_bloc.dart';
import 'package:find_football/src/features/auth/login/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/di.dart';

@RoutePage()
class LoginFormView extends StatefulWidget {
  const LoginFormView({super.key});

  @override
  State<LoginFormView> createState() => _LoginFormViewState();
}

class _LoginFormViewState extends State<LoginFormView> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _loginController;
  late TextEditingController _passwordController;
  late bool _isPasswordObsecure;
  late bool _isRememberPassword;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _loginController = TextEditingController();
    _passwordController = TextEditingController();
    _isPasswordObsecure = true;
    _isRememberPassword = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                context.router.pop();
                // di<LoginBloc>().add()
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF252525),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Log In',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                    color: Colors.white),
                          ),
                          const Spacer(),
                          CustomTextField(
                            controller: _loginController,
                            hintText: "Login",
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            backgroundColor: Colors.grey.withOpacity(0.7),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width / 1.12,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isPasswordObsecure,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: _passwordController.text.isNotEmpty
                                    ? IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isPasswordObsecure =
                                                !_isPasswordObsecure;
                                          });
                                        },
                                        icon: _isPasswordObsecure
                                            ? const Icon(
                                                Icons.visibility,
                                                color: Colors.grey,
                                              )
                                            : const Icon(
                                                Icons.visibility_off,
                                                color: Colors.grey,
                                              ),
                                      )
                                    : null,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                hintText: 'Password',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(16),
                              ],
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _isRememberPassword,
                                onChanged: (_) {
                                  setState(
                                    () {
                                      _isRememberPassword =
                                          !_isRememberPassword;
                                    },
                                  );
                                },
                              ),
                              Text(
                                'Remember password',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.grey),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot password?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomButton(
                              color: AppColors.buttonColor,
                              text: "Sign In",
                              textColor: Colors.white,
                              onTap: () {
                                di<LoginBloc>().add(LoginEvent(buildContext: context, login: _loginController.text.trim(), password: _passwordController.text.trim(),),);
                              }),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 90,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You don\'t have a account ? ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    context.pushRoute(RegisterFormView());
                  },
                  child: Text(
                    'Register',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: AppColors.buttonColor),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
