import 'package:linkyou_task/src/application/data/models/request_models/pagination_request_model.dart';
import 'package:linkyou_task/src/application/data/models/response_models/error_response_model.dart';
import 'package:linkyou_task/src/core/services/api_service.dart';
import 'package:linkyou_task/src/features/users_list/data/models/user_response_model.dart';

abstract class UsersListDataSourceInterface {
  Future<List<UserResponseModel>> getUsersList(
      PaginationRequestModel pagination);
}

class UsersListRemoteDataSource implements UsersListDataSourceInterface {
  final ApiService _apiService;
  UsersListRemoteDataSource({required ApiService apiService})
      : _apiService = apiService;
  @override
  Future<List<UserResponseModel>> getUsersList(
      PaginationRequestModel pagination) async {
    try {
      final res = await _apiService.getData(
        url: 'users',
        query: pagination.toJson(),
      );
      return res.data["data"]
          .map<UserResponseModel>((e) => UserResponseModel.fromJson(e))
          .toList();
    } catch (e) {
      throw ErrorHandler.handleError(e);
    }
  }
}
