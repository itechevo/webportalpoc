import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/ui_action.dart';

part 'sign_in_ui_state.freezed.dart';

@unfreezed
abstract class SignInUiState with _$SignInUiState {
  factory SignInUiState({@Default(null) UiAction? uiAction}) = _SignInUiState;
}
