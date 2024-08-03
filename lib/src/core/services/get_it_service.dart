import 'package:get_it/get_it.dart';
import 'package:linkyou_task/src/core/services/api_service.dart';
import 'package:linkyou_task/src/core/services/env_service.dart';
import 'package:linkyou_task/src/features/login/data/data_sources/login_data_source_interface.dart';
import 'package:linkyou_task/src/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:linkyou_task/src/features/login/data/repo/login_repo.dart';
import 'package:linkyou_task/src/features/login/presentation/ux/controllers/login_cubit.dart';
import 'package:linkyou_task/src/features/users_list/data/data_sources/users_list_remote_data_source.dart';
import 'package:linkyou_task/src/features/users_list/data/repo/users_list_repo.dart';
import 'package:linkyou_task/src/features/users_list/presentation/ux/controllers/users_list_cubit.dart';

final getIt = GetIt.instance;

class GetItService {
  static init() async {
    getIt.registerLazySingleton(() => EnvService());
    await getIt<EnvService>().init();
    getIt.registerLazySingleton(() => ApiService(env: getIt()));

    getIt.registerLazySingleton<LoginDataSourceInterface>(
        () => LoginRemoteDataSource(apiService: getIt()));
    getIt.registerLazySingleton<LoginRepoInterface>(
        () => LoginRepo(dataSource: getIt<LoginDataSourceInterface>()));
    getIt.registerLazySingleton(
        () => LoginCubit(repo: getIt<LoginRepoInterface>()));

    getIt.registerLazySingleton<UsersListDataSourceInterface>(
        () => UsersListRemoteDataSource(apiService: getIt()));
    getIt.registerLazySingleton<UsersListRepoInterface>(
        () => UsersListRepo(dataSource: getIt<UsersListDataSourceInterface>()));
    getIt.registerLazySingleton(
        () => UsersListCubit(repo: getIt<UsersListRepoInterface>()));
  }
}
