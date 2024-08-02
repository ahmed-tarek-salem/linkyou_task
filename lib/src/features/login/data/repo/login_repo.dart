import 'package:linkyou_task/src/application/data/models/response_models/user_response_model.dart';
import 'package:linkyou_task/src/features/login/data/data_sources/login_data_source_interface.dart';

abstract class LoginRepoInterface {
  Future<UserResponseModel?> loginWithGoogle();
  Future<void> postUser(UserResponseModel user);
}

class LoginRepo implements LoginRepoInterface {
  final LoginDataSourceInterface _dataSource;
  LoginRepo({required LoginDataSourceInterface dataSource})
      : _dataSource = dataSource;
  @override
  Future<UserResponseModel?> loginWithGoogle() async {
    final googleUser = await _dataSource.loginWithGoogle();
    return UserResponseModel(
        name: googleUser?.displayName, email: googleUser?.email);
  }

  @override
  Future<void> postUser(UserResponseModel user) {
    return _dataSource.postUser(user);
  }
}
