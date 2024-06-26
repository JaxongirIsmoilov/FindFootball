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
import 'package:find_football/src/features/main/add_ad/data/repository/add_ad_repository_impl.dart';
import 'package:find_football/src/features/main/add_ad/domain/repository/add_ad_repository.dart';
import 'package:find_football/src/features/main/add_ad/domain/usecase/add_ad_usecase.dart';
import 'package:find_football/src/features/main/add_ad/domain/usecase/get_districts_usecase.dart';
import 'package:find_football/src/features/main/booking/domain/repository/booking_repository.dart';
import 'package:find_football/src/features/main/booking/domain/usecase/book_stadium_usecase.dart';
import 'package:find_football/src/features/main/details/data/repository/details_repository_impl.dart';
import 'package:find_football/src/features/main/details/domain/repository/details_repository.dart';
import 'package:find_football/src/features/main/details/domain/usecase/add_favorite_usecase.dart';
import 'package:find_football/src/features/main/details/domain/usecase/remove_from_favorite_usecase.dart';
import 'package:find_football/src/features/main/favotire/data/repository/favorite_repository_impl.dart';
import 'package:find_football/src/features/main/favotire/domain/repository/favorite_repository.dart';
import 'package:find_football/src/features/main/favotire/domain/usecase/get_all_favorite.dart';
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

import '../../features/main/booking/data/repository/booking_repository_impl.dart';
import '../../features/main/booking/domain/usecase/booked_times_use_case.dart';
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

  di.registerLazySingleton(() => BookingRepositoryImpl(di()));
  di.registerFactory<BookingRepository>(() => BookingRepositoryImpl(di()));

  di.registerLazySingleton(() => AddAdRepositoryImpl(di()));
  di.registerFactory<AddAdRepository>(() => AddAdRepositoryImpl(di()));

  di.registerLazySingleton(() => DetailsRepositoryImpl(di()));
  di.registerFactory<DetailsRepository>(() => DetailsRepositoryImpl(di()));

  di.registerLazySingleton(() => FavoriteRepositoryImpl(di()));
  di.registerFactory<FavoriteRepository>(() => FavoriteRepositoryImpl(di()));
  //UseCase
  di.registerFactory<RegisterUseCase>(() => RegisterUseCase(di()));
  di.registerFactory<VerifyUseCase>(() => VerifyUseCase(di()));
  di.registerFactory<LoginUseCase>(() => LoginUseCase(di()));
  di.registerFactory<RootUsecase>(() => RootUsecase(di()));
  di.registerFactory<FetchAllStadiumsUseCase>(() => FetchAllStadiumsUseCase(di()));
  di.registerFactory<ProfileUseCase>(() => ProfileUseCase(di()));
  di.registerFactory<RequestToHostUseCase>(() => RequestToHostUseCase(di()));
  di.registerFactory<BookedTimesUseCase>(() => BookedTimesUseCase(di()));
  di.registerFactory<BookStadiumUseCase>(() => BookStadiumUseCase(di()));
  di.registerFactory<GetDistrictsUseCase>(() => GetDistrictsUseCase(di()));
  di.registerFactory<AddAdUseCase>(() => AddAdUseCase(di()));
  di.registerFactory<GetAllFavoriteUseCase>(() => GetAllFavoriteUseCase(di()));
  di.registerFactory<AddFavoriteUseCase>(() => AddFavoriteUseCase(di()));
  di.registerFactory<RemoveFromFavoriteUseCase>(() => RemoveFromFavoriteUseCase(di()));
}