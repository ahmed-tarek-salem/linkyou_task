import 'package:linkyou_task/src/application/data/models/request_models/pagination_request_model.dart';
import 'package:linkyou_task/src/application/data/models/response_models/user_response_model.dart';
import 'package:linkyou_task/src/features/users_list/data/data_sources/users_list_remote_data_source.dart';

abstract class UsersListRepoInterface {
  Future<List<UserResponseModel>> getUsersList(
      PaginationRequestModel pagination);
}

class UsersListRepo implements UsersListRepoInterface {
  final UsersListDataSourceInterface _dataSource;
  UsersListRepo({required UsersListDataSourceInterface dataSource})
      : _dataSource = dataSource;
  @override
  Future<List<UserResponseModel>> getUsersList(
      PaginationRequestModel pagination) async {
    return _dataSource.getUsersList(pagination);
  }
}
