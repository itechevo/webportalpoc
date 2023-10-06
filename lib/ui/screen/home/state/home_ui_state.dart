import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/model/user.dart';
import '../../../model/ui_action.dart';

part 'home_ui_state.freezed.dart';

@unfreezed
abstract class HomeUiState with _$HomeUiState {
  factory HomeUiState(
      {@Default(true) bool isLoading,
      @Default([]) List<User> users,
      @Default(null) UiAction? uiAction}) = _HomeUiState;
}
