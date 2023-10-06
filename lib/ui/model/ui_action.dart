abstract class UiAction {}

class NoAction extends UiAction {}

class NavigateTo extends UiAction {
  String screen;
  Map<String, dynamic>? parameters;

  NavigateTo(this.screen, {this.parameters});
}

class NavigateBack extends UiAction {}

class ShowError extends UiAction {
  String errorMsg;

  ShowError(this.errorMsg);
}

class ShowDone extends UiAction {
  String doneMsg;

  ShowDone(this.doneMsg);
}

class ShowLoadingDialog extends UiAction {}

class ShowDatePicker extends UiAction {}

class ShowSavingDialog extends UiAction {}

class ShowSuccessDialog extends UiAction {}

class ShowSkipDialog extends UiAction {}

class ShowBottomSheet extends UiAction {}
