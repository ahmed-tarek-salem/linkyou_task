import 'package:linkyou_task/src/application/data/models/request_models/user_resquest_model.dart';
import 'package:linkyou_task/src/application/data/models/response_models/error_response_model.dart';
import 'package:linkyou_task/src/features/login/data/data_sources/login_data_source_interface.dart';

abstract class LoginRepoInterface {
  Future<UserRequestModel?> loginWithGoogle();
  Future<void> postUser(UserRequestModel user);
}

class LoginRepo implements LoginRepoInterface {
  final LoginDataSourceInterface _dataSource;
  LoginRepo({required LoginDataSourceInterface dataSource})
      : _dataSource = dataSource;
  @override
  Future<UserRequestModel?> loginWithGoogle() async {
    final googleUser = await _dataSource.loginWithGoogle();
    if (googleUser == null) {
      throw ErrorResponseModel("User didn't login", ErrorType.validation);
    }
    return UserRequestModel(
        name: googleUser.displayName, email: googleUser.email);
  }

  @override
  Future<void> postUser(UserRequestModel user) {
    return _dataSource.postUser(user);
  }
}
