import 'package:find_football/src/core/consts/hive_box/box_consts.dart';
import 'package:find_football/src/core/utils/app_utils.dart';
import 'package:hive/hive.dart';

class HiveService{
  HiveService._();

  static Future<void> initHive() async {
    await Hive.openBox('AppBox');
  }

  static final box = Hive.box('AppBox');

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

}