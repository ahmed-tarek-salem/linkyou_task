import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:linkyou_task/src/application/data/models/response_models/user_response_model.dart';
import 'package:linkyou_task/src/application/presentation/ui/widgets/error_widget.dart';
import 'package:linkyou_task/src/features/users_list/presentation/ux/controllers/users_list_cubit.dart';

class UsersListScreen extends StatelessWidget {
  const UsersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UsersListCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users List"),
      ),
      body: PagedListView.separated(
          pagingController: cubit.users,
          builderDelegate: PagedChildBuilderDelegate<UserResponseModel>(
              animateTransitions: true,
              itemBuilder: (context, user, index) => Text(user.name ?? "-")),
          separatorBuilder: (context, index) => const SizedBox(height: 20)),
    );
  }
}
