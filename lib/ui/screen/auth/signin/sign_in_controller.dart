import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webportaladmin/data/auth_repository_impl.dart';
import 'package:webportaladmin/domain/model/result.dart';
import 'package:webportaladmin/ui/model/ui_action.dart';
import 'package:webportaladmin/ui/router/app_screen.dart';
import 'package:webportaladmin/ui/screen/auth/signin/state/sign_in_ui_state.dart';

import '../../../../domain/repository/auth_repository.dart';

final signInScreenControllerProvider =
    StateNotifierProvider.autoDispose<SignInScreenController, SignInUiState>(
        (ref) {
  final authRepository = ref.read(authRepositoryProvider);
  return SignInScreenController(authRepository);
});

class SignInScreenController extends StateNotifier<SignInUiState> {
  final AuthRepository authRepository;

  SignInScreenController(this.authRepository) : super(SignInUiState());

  void resetUiAction() {
    if (state.uiAction != null) {
      state = state.copyWith(uiAction: null);
    }
  }

  void signIn(String username, String password) async {
    final result = await authRepository.login(username, password);

    if (result is Success) {
      if (result.successType == SuccessType.resetPassword) {
        state =
            state.copyWith(uiAction: NavigateTo(AppScreen.changePassword.name));
      }
    }
  }
}
