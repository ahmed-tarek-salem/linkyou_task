part of '../screens/login_screen.dart';

class _LoginBodyContainer extends StatelessWidget {
  const _LoginBodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstants.defaultHorizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: GoogleLoginButton())],
      ),
    );
  }
}
