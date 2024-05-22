import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/colors/app_colors.dart';
import '../router/router.gr.dart';
import '../widgets/common_text.dart';
import 'dialogs.dart';

Future<void> popUp(BuildContext context, {required String error,}) {
  return showCupertinoDialog(
    context: context,
    builder: (context) {
      return Theme(
        data: ThemeData.dark(),
        child: CupertinoAlertDialog(
          title: const CommText(
            text: 'Oops!',
            textColor: AppColors.red,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w700,
          ),
          content: Text(error),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const CommText(
                text:'OK',
                textColor: AppColors.buttonColor,
              ),
              onPressed: () {
                Navigator.pop(Loaders.ctx);
                context.router.pop();
              },
            ),
          ],
        ),
      );
    },
  );
}

Future<void> connectPopUp(BuildContext context){
  return showCupertinoDialog(
    context: context,
    builder: (context) {
      return Theme(
        data: ThemeData.dark(),
        child: CupertinoAlertDialog(
          title: const CommText(
            text: 'Oops!',
            textColor: AppColors.red,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w700,
          ),
          content: const CommText(
              text: 'Internet connection is not available'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const CommText(
                text:'Offline mode',
                textColor: AppColors.red,
              ),
              onPressed: () {
                context.router.pop();
              },
            ),
            CupertinoDialogAction(
              child: const CommText(
                text:'Connection',
                textColor: AppColors.buttonColor,
              ),
              onPressed: () {
                context.router.pop();
              },
            ),
          ],
        ),
      );
    },
  );
}

Future<void> logOut(BuildContext context) {
  return showCupertinoDialog(
    context: context,
    builder: (context) {
      return Theme(
        data: ThemeData.dark(),
        child: CupertinoAlertDialog(
          title: CommText(
              text: 'Attention!',
              textColor: AppColors.red,
              textAlign: TextAlign.center,
              fontSize: 18.sp),
          content: const CommText(
              text: 'Are you sure you want to exit the application?',
              textAlign: TextAlign.center,
              textColor: AppColors.textColor,
              fontWeight: FontWeight.w400),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const CommText(
                text: 'Cancel',
                textColor: AppColors.buttonColor,
              ),
              onPressed: () {
                context.router.pop();
              },
            ),
            CupertinoDialogAction(
              child: const CommText(
                  text: 'Logout', textColor: AppColors.red),
              onPressed: () async {
                // await Future.wait([
                //   FirebaseAuth.instance.signOut(),
                //   HiveService.removeVerifiedUser(),
                //   HiveService.removeUserInfo(),
                //
                // ]);
                // if(context.mounted){
                //   context.router.push(SelectLangView());
                // }
              },
            ),
          ],
        ),
      );
    },
  );
}