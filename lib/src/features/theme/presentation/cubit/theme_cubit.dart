import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/core/theme/theme.dart';
import 'package:find_football/src/features/theme/presentation/cubit/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(
          HiveService.darkTheme()
              ? ThemeState(AppThemes.darkTheme)
              : ThemeState(AppThemes.lightTheme),
        );

  void getTheme(ThemeState themeState) {
    emit(themeState);
  }
}
