import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkyou_task/src/core/utilites/constants/app_images.dart';
import 'package:linkyou_task/src/features/login/presentation/ux/controllers/login_cubit.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Image.asset(AppImages.googleLogo, height: 40.0),
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
    );
  }
}
