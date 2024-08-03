import 'package:google_sign_in/google_sign_in.dart';
import 'package:linkyou_task/src/application/data/models/response_models/error_response_model.dart';
import 'package:linkyou_task/src/application/data/models/request_models/user_resquest_model.dart';
import 'package:linkyou_task/src/core/services/api_service.dart';
import 'package:linkyou_task/src/features/login/data/data_sources/login_data_source_interface.dart';

class LoginRemoteDataSource implements LoginDataSourceInterface {
  final ApiService _apiService;
  LoginRemoteDataSource({required ApiService apiService})
      : _apiService = apiService;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Future<GoogleSignInAccount?> loginWithGoogle() async {
    try {
      return await _googleSignIn.signIn();
    } catch (e) {
      throw ErrorHandler.handleError(e);
    }
  }

  @override
  Future<void> postUser(UserRequestModel user) async {
    try {
      await _apiService.postData(url: 'users', data: user.toJson());
    } catch (e) {
      throw ErrorHandler.handleError(e);
    }
  }
}
