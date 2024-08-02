import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:linkyou_task/src/core/services/google_sign_in_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () async {
                    final user = await GoogleSignInService.signIn();
                    print(user?.displayName);
                  },
                  child: Text("Sign in with google")))
        ],
      ),
    );
  }
}
