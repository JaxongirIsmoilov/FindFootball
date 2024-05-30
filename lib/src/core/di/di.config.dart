// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/confirmation/presentation/verify_bloc/verify_bloc.dart'
    as _i3;
import '../../features/auth/login/presentation/login_bloc/login_bloc.dart'
    as _i5;
import '../../features/auth/register/presentation/register_bloc/register_bloc.dart'
    as _i4;
import '../../features/main/add_ad/presentation/bloc/add_ad_bloc.dart' as _i9;
import '../../features/main/booking/presentation/bloc/booking_bloc.dart' as _i7;
import '../../features/main/home/presentation/bloc/home_bloc.dart' as _i6;
import '../../features/main/profile/presentation/bloc/profile_bloc.dart' as _i8;
import '../../features/main/root/presentation/bloc/root_bloc.dart' as _i10;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.VerifyBloc>(() => _i3.VerifyBloc());
  gh.lazySingleton<_i4.RegisterBloc>(() => _i4.RegisterBloc());
  gh.lazySingleton<_i5.LoginBloc>(() => _i5.LoginBloc());
  gh.lazySingleton<_i6.HomeBloc>(() => _i6.HomeBloc());
  gh.lazySingleton<_i7.BookingBloc>(() => _i7.BookingBloc());
  gh.lazySingleton<_i8.ProfileBloc>(() => _i8.ProfileBloc());
  gh.lazySingleton<_i9.AddAdBloc>(() => _i9.AddAdBloc());
  gh.lazySingleton<_i10.RootBloc>(() => _i10.RootBloc());
  return getIt;
}
