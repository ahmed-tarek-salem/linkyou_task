import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:linkyou_task/src/application/presentation/ux/router.dart';
import 'package:linkyou_task/src/core/services/get_it_service.dart';
import 'package:linkyou_task/src/features/login/presentation/ui/screens/login_screen.dart';
import 'package:linkyou_task/src/features/login/presentation/ux/controllers/login_cubit.dart';

class LoginRoute extends GoRoute {
  LoginRoute()
      : super(
          path: '/',
          name: AppRoutes.login.name,
          builder: (context, state) {
            return BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen(),
            );
          },
        );
}
