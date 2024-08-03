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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: ElevatedButton.icon(
                icon:
                    Image.asset('assets/images/google_logo.png', height: 40.0),
                label: const Text('Sign in with Google'),
                onPressed: context.read<LoginCubit>().loginWithGoogle,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  textStyle: const TextStyle(fontSize: 18.0),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
