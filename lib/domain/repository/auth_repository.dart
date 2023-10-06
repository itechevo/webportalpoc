import '../model/result.dart';

abstract class AuthRepository {
  bool get isUserLoggedIn;

  Future<Result> login(String username, String password);

  Future<Result> resetPassword(String username, String password);
}
