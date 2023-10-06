abstract class Result<T> {}

class Success<T> extends Result<T> {
  T? data;
  SuccessType? successType;

  Success({this.data, this.successType});
}

class Error<T> extends Result<T> {
  ErrorType? errorType;
  Error({this.errorType});
}

enum ErrorType {
  userAccountNotCreated,
  userNotCreated,
  userProfileNotCreated,
  userMatchPreferenceNotCreated,
  userUniqueError,
  notMatchingUserNPassword,
  notMatchingUser,
  cantUpdatedPassword,
  pleaseTryAgain,
  wrongOtpCode,
  notConnectedNetwork,
  limitExceeded,
  invalidPhoneNumber
}

enum SuccessType {
  signedIn,
  resetPassword,
  done
}
