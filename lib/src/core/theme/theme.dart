import 'package:flutter/material.dart';

import '../consts/colors/app_colors.dart';

class AppThemes{
  static const int _primaryColor = 0xFF6366F1;
  static const MaterialColor primarySwatch =
  MaterialColor(_primaryColor, <int, Color>{
    50: Color(0xFF10284c),
    100: Color(0xFF10284c),
    200: Color(0xFF10284c),
    300: Color(0xFF10284c),
    400: Color(0xFF10284c),
    500: Color(_primaryColor),
    600: Color(0xFF10284c),
    700: Color(0xFF10284c),
    800: Color(0xFF10284c),
    900: Color(0xFF10284c),
  });

  static const int _textColor = 0xFF000000;
  static const MaterialColor textSwatch =
  MaterialColor(_textColor, <int, Color>{
    50: Color(0xFFc9f5fe),
    100: Color(0xFFc9f5fe),
    200: AppColors.appBakColor,
    300: Color(0xFFc9f5fe),
    400: Color(0xFFc9f5fe),
    500: Color(_textColor),
    600: Color(0xFFc9f5fe),
    700: Color(0xFFc9f5fe),
    800: Color(0xFFc9f5fe),
    900: Color(0xFFc9f5fe),
  });

  static final lightTheme = ThemeData(

  );

  static final darkTheme = ThemeData(
    //TODO
  );

}