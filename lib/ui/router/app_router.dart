import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webportaladmin/ui/screen/auth/signin/sign_in_screen.dart';
import 'package:webportaladmin/ui/screen/home/home_screen.dart';

import '../screen/auth/changepassword/change_password_screen.dart';
import 'app_screen.dart';

class AppRouter {
  GoRouter get router => _goRouter;
  final bool isUserLoggedIn;

  AppRouter(this.isUserLoggedIn);

  late final GoRouter _goRouter = GoRouter(
    initialLocation: isUserLoggedIn ? AppScreen.home.toPath : AppScreen.signIn.toPath,
    routes: [
      HomeScreen.route,
      SignInScreen.route,
      ChangePasswordScreen.route
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  );
}
