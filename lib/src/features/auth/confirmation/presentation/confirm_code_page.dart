import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/features/auth/confirmation/presentation/verify_bloc/verify_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class ConfirmCodeView extends StatefulWidget {
  const ConfirmCodeView({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  State<ConfirmCodeView> createState() => _ConfirmCodeViewState();
}

class _ConfirmCodeViewState extends State<ConfirmCodeView> {
  late PinTheme defaultPinTheme;
  late PinTheme focusedPinTheme;
  late PinTheme submittedPinTheme;
  late PinTheme errorPinTheme;
  @override
  void initState() {
    defaultPinTheme = PinTheme(
      width: 48,
      height: 48,
      textStyle: const TextStyle(
        fontSize: 16,
        color:Color(0xFF0860D9),
        fontWeight: FontWeight.w500,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        // border: Border.all(color: const Color(0xFF0860D9)),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: const Color(0xFFF1F5F9),
      border: Border.all(color: const Color(0xFF0860D9)),
      borderRadius: BorderRadius.circular(8),
    );
    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color(0xFFF1F5F9),
        // borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF0860D9)),
      ),
    );
    errorPinTheme = defaultPinTheme.copyWith(
      textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: Color(0xFFEA0707)),
      decoration: defaultPinTheme.decoration?.copyWith(
          color: const Color(0xFFF1F5F9),
          border: Border.all(color: const Color(0xFFEA0707))
      ),
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<VerifyBloc, VerifyState>(
      builder: (context, state) {
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
            child: Padding(
              padding: const EdgeInsets.only(top: 62),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Verification Code',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Code sent to ${widget.phoneNumber}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Code expires in 01:30',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                      focusedPinTheme: focusedPinTheme,
                      submittedPinTheme: submittedPinTheme,
                      errorPinTheme: errorPinTheme,
                      onCompleted: (pin) {
                        // print(pin);
                        di<VerifyBloc>().add(VerifyRegisterEvent(buildContext: context, otpCode: pin),);
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Didn\'t get the code ?    '),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Try again',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.buttonColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
