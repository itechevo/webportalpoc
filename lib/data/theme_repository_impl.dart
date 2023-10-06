import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/repository/theme_repository.dart';
import '../ui/theme/theme_data.dart';

final themeRepositoryProvider = ChangeNotifierProvider<ThemeRepositoryImpl>((ref) {
  return ThemeRepositoryImpl();
});

class ThemeRepositoryImpl extends ChangeNotifier implements ThemeRepository {
  ThemeRepositoryImpl() {
    // setDeviceTheme();
  }

  // late ThemeData currentTheme;
  // late Brightness brightness;
  // late ThemeType _themeType;

  ThemeData currentTheme = lightTheme;
  Brightness brightness = Brightness.light;
  ThemeType _themeType = ThemeType.light;

  // void setDeviceTheme() {
  //   final currentBrightness =
  //       SchedulerBinding.instance.platformDispatcher.platformBrightness;
  //   if (currentBrightness == Brightness.dark) {
  //     currentTheme = darkTheme;
  //     _themeType = ThemeType.dark;
  //     brightness = Brightness.dark;
  //   } else {
  //     currentTheme = lightTheme;
  //     _themeType = ThemeType.light;
  //     brightness = Brightness.light;
  //   }
  // }

  @override
  void toggleTheme() {
    if (_themeType == ThemeType.dark) {
      currentTheme = lightTheme;
      _themeType = ThemeType.light;
      notifyListeners();
    } else {
      currentTheme = darkTheme;
      _themeType = ThemeType.dark;
      notifyListeners();
    }
  }

  @override
  ThemeType themeType() {
    return _themeType;
  }
}
