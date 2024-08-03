import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:linkyou_task/src/application/presentation/ui/widgets/error_widget.dart';
import 'package:linkyou_task/src/features/users_list/data/models/user_response_model.dart';
import 'package:linkyou_task/src/features/users_list/presentation/ui/widgets/user_list_tile.dart';
import 'package:linkyou_task/src/features/users_list/presentation/ux/controllers/users_list_cubit.dart';

part '../containers/users_list_view.dart';

class UsersListScreen extends StatelessWidget {
  const UsersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UsersListCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users List"),
        centerTitle: true,
      ),
      body: RefreshIndicator(
          onRefresh: () async => cubit.users.refresh(),
          child: _UsersListViewContainer(cubit: cubit)),
    );
  }
}
