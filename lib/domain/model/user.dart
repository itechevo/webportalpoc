import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@unfreezed
abstract class User with _$User {
  factory User({
    required String name,
  }) = _User;
}
