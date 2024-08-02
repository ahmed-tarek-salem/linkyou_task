import 'package:google_sign_in/google_sign_in.dart';
import 'package:linkyou_task/src/application/data/models/response_models/user_response_model.dart';

abstract class LoginDataSourceInterface {
  Future<GoogleSignInAccount?> loginWithGoogle();
  Future<void> postUser(UserResponseModel user);
}
