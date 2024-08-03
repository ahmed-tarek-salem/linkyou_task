import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linkyou_task/src/application/data/models/response_models/error_response_model.dart';
import 'package:linkyou_task/src/application/data/models/request_models/user_resquest_model.dart';
import 'package:linkyou_task/src/features/login/data/repo/login_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepoInterface _repo;
  LoginCubit({required LoginRepoInterface repo})
      : _repo = repo,
        super(const LoginState.initial());

  late final UserRequestModel? user;

  loginWithGoogle() async {
    emit(const LoginState.requestLoading());
    try {
      user = await _repo.loginWithGoogle();
      if (user == null) {
        throw ErrorResponseModel("user not found", ErrorType.network);
      }
      await _repo.postUser(user!);
      emit(LoginState.requestSuccess(user!));
    } on ErrorResponseModel catch (e) {
      emit(LoginState.requestError(e));
    }
  }
}
