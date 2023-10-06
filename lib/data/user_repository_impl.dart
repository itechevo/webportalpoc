import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_name_generator/random_name_generator.dart';

import '../domain/model/user.dart';
import '../domain/repository/user_repository.dart';
import '../domain/model/result.dart';

///userRepositoryChangeNotifier
final userRepositoryProvider =
    ChangeNotifierProvider<UserRepositoryImpl>((ref) {
  return UserRepositoryImpl();
});

class UserRepositoryImpl extends ChangeNotifier implements UserRepository {
  UserRepositoryImpl();

  @override
  Future<Result> fetchReportedUsers() async {
    var randomNames = RandomNames(Zone.uk);
    //TODO: CREATE MOCK FAKE DATA HERE
    return Success(data: [
      User(name: randomNames.fullName()),
      User(name: randomNames.fullName())
    ]);
  }
}
