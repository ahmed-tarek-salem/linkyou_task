import 'package:go_router/go_router.dart';
import 'package:linkyou_task/src/features/login/presentation/ux/routes/login_route.dart';
import 'package:linkyou_task/src/features/users_list/presentation/ux/routes/users_list_route.dart';

enum AppRoutes {
  login,
  usersList,
}

final router = GoRouter(
  initialLocation: '/',
  routes: [
    LoginRoute(),
    UsersListRoute(),
  ],
);
