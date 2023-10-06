enum ThemeType { light, dark }

abstract class ThemeRepository {
  void toggleTheme();

  ThemeType themeType();
}
