import 'package:go_router/go_router.dart';
import 'package:linkyou_task/src/features/login/presentation/ux/routes/login_route.dart';

enum AppRoutes {
  login,
  usersList,
}

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    LoginRoute(),
  ],
);
