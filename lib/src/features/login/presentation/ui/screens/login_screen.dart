import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:linkyou_task/src/application/presentation/ux/router.dart';
import 'package:linkyou_task/src/core/utilites/constants/app_constants.dart';
import 'package:linkyou_task/src/features/login/presentation/ui/widgets/google_login_button.dart';
import 'package:linkyou_task/src/features/login/presentation/ux/controllers/login_cubit.dart';

part '../containers/login_body_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            requestLoading: SmartDialog.showLoading,
            requestSuccess: (data) {
              SmartDialog.dismiss();
              context.goNamed(AppRoutes.usersList.name);
            },
            requestError: (error) {
              SmartDialog.dismiss();
              SmartDialog.showToast(error.message);
            },
            orElse: () {},
          );
        },
        child: const _LoginBodyContainer(),
      ),
    );
  }
}
