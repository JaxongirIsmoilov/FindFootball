import 'package:find_football/src/core/consts/hive_box/box_consts.dart';
import 'package:find_football/src/core/utils/app_utils.dart';
import 'package:hive/hive.dart';

class HiveService{
  HiveService._();

  static Future<void> initHive() async {
    await Hive.openBox('AppBox');
  }

  static final box = Hive.box('AppBox');

  // Theme change

  static Future<void> saveTheme(bool isDark) async {
    await box.put(BoxConsts.themeKey, isDark);
  }

  static bool darkTheme() {
    AppUtils.isDark = box.get(BoxConsts.themeKey) ?? false;
    return AppUtils.isDark;
  }

  static Future<void> removeTheme() async {
    await box.delete(BoxConsts.themeKey);
  }


  // Is User Verified

  static Future<void> saveVerifiedUser(bool isVerifiedUser) async {
    await box.put(BoxConsts.verifiedUserKey, isVerifiedUser);
  }

  static Future<void> removeVerifiedUser() async{
    await box.delete(BoxConsts.verifiedUserKey);
  }

  static Future<bool> isUserVerified() async {
    var result =  await box.get(BoxConsts.verifiedUserKey) ?? false;
    return result;
  }

  //ShowOnboarding

  static Future<void> saveUserSeenOnBoarding(bool isFirstTimeUser) async {
    await box.put(BoxConsts.verifiedUserKey, isFirstTimeUser);
  }

  static Future<bool> isShowBoarding() async {
    var result =  await box.get(BoxConsts.verifiedUserKey) ?? false;
    return result;
  }

  //Access token
  static Future<void> saveAccessToken(String accessToken) async {
    await box.put(BoxConsts.accessToken, accessToken) ;
  }

  static Future<void> removeAccessToken() async{
    await box.delete(BoxConsts.accessToken);
  }

  static Future<String> getAccessToken() async{
    return await box.get(BoxConsts.accessToken) ?? "";
  }

  //AccountId token
  static Future<void> saveAccountId(String accountId) async {
    await box.put(BoxConsts.accountId, accountId) ;
  }

  static Future<void> removeAccountId() async{
    await box.delete(BoxConsts.accountId);
  }

  static Future<String> getAccountId() async{
    return await box.get(BoxConsts.accountId) ?? "";
  }

  // Refresh Token

  static Future<void> saveRefreshToken(String refreshToken) async{
    await box.put(BoxConsts.refreshToken, refreshToken);
  }

  static Future<void> removeRefreshToken() async{
    await box.delete(BoxConsts.refreshToken);
  }

  static Future<String> getRefreshToken() async {
    return await box.get(BoxConsts.refreshToken) ?? "";
  }


  //Otp
  static Future<void> saveOtpToken(String otpToken) async {
    await box.put(BoxConsts.otpToken, otpToken);
  }

  static Future<void> deleteOtpToken() async {
    await box.delete(BoxConsts.otpToken);
  }

  static Future<String> getOtpToken() async {
    return await box.get(BoxConsts.otpToken) ?? "";
  }

  // User Id
  static Future<void> saveUserId(String userId) async {
    await box.put(BoxConsts.userId, userId);
  }

  static Future<void> removeUserId() async {
    await box.delete(BoxConsts.userId);
  }

  static Future<String> getUserId() async {
    return await box.get(BoxConsts.userId) ?? "";
  }


}