import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/repository/auth_repository.dart';
import '../domain/model/result.dart';

///authRepositoryChangeNotifier
final authRepositoryProvider =
    ChangeNotifierProvider<AuthRepositoryImpl>((ref) {
  return AuthRepositoryImpl();
});

class AuthRepositoryImpl extends ChangeNotifier implements AuthRepository {
  AuthRepositoryImpl() {
    checkUserLoggedIn();
  }

  bool _isUserLoggedIn = false;

  void myTokenReceivedHandler(String token) {}

  Future<void> checkUserLoggedIn() async {
    notifyListeners();
  }

  @override
  bool get isUserLoggedIn => _isUserLoggedIn;

  @override
  Future<Result> login(String username, String password) async {
    return Success(successType: SuccessType.resetPassword);
  }

  @override
  Future<Result> resetPassword(String username, String password) async {
    _isUserLoggedIn = true;
    return Success(successType: SuccessType.signedIn);
  }
}
