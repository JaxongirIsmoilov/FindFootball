import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ConfirmCodePage extends StatelessWidget {
  const ConfirmCodePage({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return Scaffold(
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
              color: Color(0xFF252525),
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
                const SizedBox(height: 15,),
                Text('Code sent to $phoneNumber', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),),
                const SizedBox(height: 15,),
                Text('Code expires in 01:30', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),),
                const SizedBox(height: 10,),
                Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  onCompleted: (pin) => debugPrint(pin),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Didn\'t get the code ?    '),
                    TextButton(onPressed: (){}, child:  Text('Try again', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.buttonColor),),)
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
