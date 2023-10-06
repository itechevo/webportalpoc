import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webportaladmin/domain/repository/user_repository.dart';

import '../data/user_repository_impl.dart';
import 'model/result.dart';

//START Provider
final userUseCaseProvider = Provider.autoDispose<UserUseCase>((ref) {
  final userRepository = ref.read(userRepositoryProvider);
  return UserUseCase(userRepository);
});
//END

class UserUseCase {
  final UserRepository userRepository;

  UserUseCase(this.userRepository);

  Future<Result> fetchReportedUsers() async {
    return await userRepository.fetchReportedUsers();
  }
}
