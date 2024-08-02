import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:linkyou_task/src/application/presentation/ux/router.dart';
import 'package:linkyou_task/src/core/services/get_it_service.dart';
import 'package:linkyou_task/src/core/services/google_sign_in_service.dart';
import 'package:linkyou_task/src/features/login/presentation/ux/controllers/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
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
              print(data);
              SmartDialog.dismiss();
              context.goNamed(AppRoutes.usersList.name);
            },
            requestError: (error) => SmartDialog.showToast(error.message),
            orElse: () {},
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(double.infinity, 40)),
                    onPressed: () async {
                      context.read<LoginCubit>().loginWithGoogle();
                    },
                    child: const Text("Sign in with google")))
          ],
        ),
      ),
    );
  }
}
