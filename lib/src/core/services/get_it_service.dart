import 'package:get_it/get_it.dart';
import 'package:linkyou_task/src/core/services/api_service.dart';
import 'package:linkyou_task/src/core/services/env_service.dart';

final getIt = GetIt.instance;

class GetItService {
  static init() async {
    getIt.registerLazySingleton(() => EnvService());
    await getIt<EnvService>().init();

    getIt.registerLazySingleton(() => ApiService(env: getIt()));

    // getIt.registerLazySingleton(
    //     () => HomeRemoteDataSource(networkService: getIt()));
    // getIt.registerLazySingleton(() => HomeRepo(remoteDataSource: getIt()));
    // getIt.registerLazySingleton(() => HomeCubit(homeRepo: getIt()));
  }
}
