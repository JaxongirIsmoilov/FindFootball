import 'package:find_football/src/core/enums/flavor.dart';
import 'package:find_football/src/core/services/flavor_service.dart';
import 'package:find_football/src/features/auth/confirmation/data/repository/verify_repository_impl.dart';
import 'package:find_football/src/features/auth/confirmation/domain/repository/verify_repository.dart';
import 'package:find_football/src/features/auth/confirmation/domain/usecase/verify_usecase.dart';
import 'package:find_football/src/features/auth/login/data/repository/login_repository_impl.dart';
import 'package:find_football/src/features/auth/login/domain/repository/login_repository.dart';
import 'package:find_football/src/features/auth/login/domain/usecase/login_usecase.dart';
import 'package:find_football/src/features/auth/register/data/repository/register_repository_impl.dart';
import 'package:find_football/src/features/auth/register/domain/repository/register_repository.dart';
import 'package:find_football/src/features/auth/register/domain/usecase/register_usecase.dart';
import 'package:find_football/src/features/main/home/data/repository/fetch_all_stadiums_repository_impl.dart';
import 'package:find_football/src/features/main/home/domain/repository/fetch_all_stadiums_repository.dart';
import 'package:find_football/src/features/main/home/domain/usecase/fetch_all_stadiums_usecase.dart';
import 'package:find_football/src/features/main/profile/data/repository/profile_repository_impl.dart';
import 'package:find_football/src/features/main/profile/domain/repository/profile_repository.dart';
import 'package:find_football/src/features/main/profile/domain/usecase/profile_use_case.dart';
import 'package:find_football/src/features/main/profile/domain/usecase/request_to_host_usecase.dart';
import 'package:find_football/src/features/main/root/data/repository/root_repository_impl.dart';
import 'package:find_football/src/features/main/root/domain/repository/root_repository.dart';
import 'package:find_football/src/features/main/root/domain/usecase/root_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../http/api_service.dart';
import 'di.config.dart';

final di = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies(Flavor flavorMode) async {
  $initGetIt(di);
  di.registerLazySingleton<FlavorService>(() => FlavorService(flavor: flavorMode));

  di.registerLazySingleton(() => ApiService());

  di.registerLazySingleton(() => RegisterRepositoryImpl(di()));
  di.registerFactory<RegisterRepository>(() => RegisterRepositoryImpl(di()));

  di.registerLazySingleton(() => VerifyRepositoryImpl(di()));
  di.registerFactory<VerifyRepository>(() => VerifyRepositoryImpl(di()));

  di.registerLazySingleton(() => LoginRepositoryImpl(di()));
  di.registerFactory<LoginRepository>(() => LoginRepositoryImpl(di()));

  di.registerLazySingleton(() => RootRepositoryImpl(di()));
  di.registerFactory<RootRepository>(() => RootRepositoryImpl(di()));

  di.registerLazySingleton(() => FetchAllStadiumsRepositoryImpl(di()));
  di.registerFactory<FetchAllStadiumsRepository>(() => FetchAllStadiumsRepositoryImpl(di()));

  di.registerLazySingleton(() => ProfileRepositoryImpl(di()));
  di.registerFactory<ProfileRepository>(() => ProfileRepositoryImpl(di()));
  //UseCase
  di.registerFactory<RegisterUseCase>(() => RegisterUseCase(di()));
  di.registerFactory<VerifyUseCase>(() => VerifyUseCase(di()));
  di.registerFactory<LoginUseCase>(() => LoginUseCase(di()));
  di.registerFactory<RootUsecase>(() => RootUsecase(di()));
  di.registerFactory<FetchAllStadiumsUseCase>(() => FetchAllStadiumsUseCase(di()));
  di.registerFactory<ProfileUseCase>(() => ProfileUseCase(di()));
  di.registerFactory<RequestToHostUseCase>(() => RequestToHostUseCase(di()));

}