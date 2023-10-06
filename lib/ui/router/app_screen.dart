enum AppScreen { signIn, changePassword, home }

extension AppScreenExtension on AppScreen {
  String get toPath {
    switch (this) {
      case AppScreen.signIn:
        return "/${AppScreen.signIn.name}";
      case AppScreen.changePassword:
        return "/${AppScreen.changePassword.name}";
      case AppScreen.home:
        return '/';
      default:
        return '/';
    }
  }
}
