import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webportaladmin/ui/screen/home/state/home_ui_state.dart';

import '../../../domain/user_usecase.dart';

final homeScreenControllerProvider =
    StateNotifierProvider.autoDispose<HomeScreenController, HomeUiState>((ref) {
  final userUseCase = ref.read(userUseCaseProvider);
  return HomeScreenController(userUseCase);
});

class HomeScreenController extends StateNotifier<HomeUiState> {
  final UserUseCase userUseCase;

  HomeScreenController(this.userUseCase) : super(HomeUiState());

  void resetUiAction() {
    if (state.uiAction != null) {
      state = state.copyWith(uiAction: null);
    }
  }
}
