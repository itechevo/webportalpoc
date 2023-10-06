import '../model/result.dart';

abstract class UserRepository {
  Future<Result> fetchReportedUsers();
}
