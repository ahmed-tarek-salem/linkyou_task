import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:linkyou_task/src/application/presentation/ux/router.dart';
import 'package:linkyou_task/src/features/users_list/presentation/ui/screens/users_list_screen.dart';
import 'package:linkyou_task/src/features/users_list/presentation/ux/controllers/users_list_cubit.dart';

import '../../../../../core/services/get_it_service.dart';

class UsersListRoute extends GoRoute {
  UsersListRoute()
      : super(
          path: '/users_list',
          name: AppRoutes.usersList.name,
          builder: (context, state) {
            return BlocProvider(
              create: (context) => getIt<UsersListCubit>(),
              child: const UsersListScreen(),
            );
          },
        );
}
