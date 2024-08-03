import 'package:google_sign_in/google_sign_in.dart';
import 'package:linkyou_task/src/application/data/models/request_models/user_resquest_model.dart';

abstract class LoginDataSourceInterface {
  Future<GoogleSignInAccount?> loginWithGoogle();
  Future<void> postUser(UserRequestModel user);
}
