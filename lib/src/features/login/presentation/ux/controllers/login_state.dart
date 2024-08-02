part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.requestLoading() = _RequestLoading;
  const factory LoginState.requestSuccess(UserResponseModel user) =
      _RequestSuccess;
  const factory LoginState.requestError(ErrorResponseModel error) =
      _RequestError;
}
