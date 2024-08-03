part of '../screens/users_list_screen.dart';

class _UsersListViewContainer extends StatelessWidget {
  const _UsersListViewContainer({
    super.key,
    required this.cubit,
  });

  final UsersListCubit cubit;

  @override
  Widget build(BuildContext context) {
    return PagedListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        pagingController: cubit.users,
        builderDelegate: PagedChildBuilderDelegate<UserResponseModel>(
            animateTransitions: true,
            firstPageErrorIndicatorBuilder: (context) =>
                AppErrorWidget(errorMessage: cubit.users.error?.message),
            newPageProgressIndicatorBuilder: (context) => const Center(
                  child: CircularProgressIndicator(),
                ),
            itemBuilder: (context, user, index) => UserListTile(user: user)),
        separatorBuilder: (context, index) => const SizedBox(height: 10));
  }
}
