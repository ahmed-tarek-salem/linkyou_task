import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:linkyou_task/src/application/data/models/request_models/pagination_request_model.dart';
import 'package:linkyou_task/src/core/extentions/pagination_extenstion.dart';
import 'package:linkyou_task/src/features/users_list/data/models/user_response_model.dart';
import 'package:linkyou_task/src/features/users_list/data/repo/users_list_repo.dart';

part 'users_list_cubit.freezed.dart';
part 'users_list_state.dart';

class UsersListCubit extends Cubit<UsersListState> {
  final UsersListRepoInterface _repo;
  UsersListCubit({required UsersListRepoInterface repo})
      : _repo = repo,
        super(const UsersListState.initial()) {
    users.addPageRequestListener(
      (pageKey) => _nextPage(page: pageKey),
    );
  }

  final users = PagingController<int, UserResponseModel>(firstPageKey: 1);

  void _nextPage({
    required int page,
  }) {
    users.nextPage(
        func: () => _repo.getUsersList(PaginationRequestModel(page: page)));
  }

  @override
  Future<void> close() {
    users.dispose();
    return super.close();
  }
}
