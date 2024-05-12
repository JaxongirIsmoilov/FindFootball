import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/consts/colors/app_colors.dart';
import '../../../../core/utils/masked_input_formatter.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../login/widgets/custom_text_field.dart';

@RoutePage()
class RegisterFormView extends StatefulWidget {
  const RegisterFormView({super.key});

  @override
  State<RegisterFormView> createState() => _RegisterFormViewState();
}

class _RegisterFormViewState extends State<RegisterFormView> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _userNameController;
  late TextEditingController _loginController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordConfirmController;
  late bool _isPasswordObsecure;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _userNameController = TextEditingController();
    _loginController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmController = TextEditingController();
    _isPasswordObsecure = true;
    super.initState();
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _userNameController.dispose();
    _loginController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            context.router.pop();
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
                        'Registration',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                      const Spacer(),
                      CustomTextField(
                        controller: _userNameController,
                        hintText: "Your full name",
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        backgroundColor: Colors.grey.withOpacity(0.7),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      // CustomTextField(
                      //   controller: _phoneNumberController,
                      //   hintText: "phone number",
                      //   prefixIcon: const Icon(
                      //     Icons.phone,
                      //     color: Colors.grey,
                      //   ),
                      //   backgroundColor: Colors.grey.withOpacity(0.7),
                      // ),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.12,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  child: TextFormField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    onTap: (){},
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.phone, color: Colors.grey,),
                      hintText: '   Phone number',
                      prefixText: '+998',
                      hintStyle:  TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                    inputFormatters: [
                      MaskedTextInputFormatter(
                        mask: ' ## ### ## ##',
                        separator: ' ',
                        filter: RegExp('[0-9]'),
                      ),
                    ],
                  ),
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
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.12,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          controller: _passwordConfirmController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _isPasswordObsecure,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: _passwordConfirmController.text.isNotEmpty
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
                            hintText: 'Confirm Password',
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
                        height: 25,
                      ),
                      CustomButton(
                          color: AppColors.buttonColor,
                          text: "Register",
                          textColor: Colors.white,
                          onTap: () {
                            context.replaceRoute(RootView(),);
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
              'Do you have a account ? ',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.grey),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Login',
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
  }
}
