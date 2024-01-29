// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ag_test/src/core/di/register_modules.dart' as _i16;
import 'package:ag_test/src/core/routes/app_router.dart' as _i3;
import 'package:ag_test/src/features/blogs/data/repo/blogs_repository_impl.dart'
    as _i12;
import 'package:ag_test/src/features/blogs/data/source/blogs_remote_source.dart'
    as _i10;
import 'package:ag_test/src/features/blogs/domain/repo/blogs_repository.dart'
    as _i11;
import 'package:ag_test/src/features/blogs/presentation/cubit/blogs_cubit.dart'
    as _i15;
import 'package:ag_test/src/features/platform_channel/data/repo/platform_channel_repository_impl.dart'
    as _i6;
import 'package:ag_test/src/features/platform_channel/domain/repo/platform_channel_repository.dart'
    as _i5;
import 'package:ag_test/src/features/platform_channel/presentation/cubit/platform_channel_cubit.dart'
    as _i13;
import 'package:ag_test/src/features/search/data/repo/search_repository_impl.dart'
    as _i9;
import 'package:ag_test/src/features/search/data/source/search_local_source.dart'
    as _i7;
import 'package:ag_test/src/features/search/domain/search_repository.dart'
    as _i8;
import 'package:ag_test/src/features/search/presentation/cubit/search_cubit.dart'
    as _i14;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
  final registerModules = _$RegisterModules();
  gh.singleton<_i3.AppRouter>(registerModules.router);
  gh.lazySingleton<_i4.Dio>(() => registerModules.dio());
  gh.lazySingleton<_i5.PlatformChannelRepository>(
      () => _i6.PlatformChannelRepositoryImpl());
  gh.lazySingleton<_i7.SearchLocalSource>(
      () => _i7.SearchLocalSourceImpl(gh<_i4.Dio>()));
  gh.lazySingleton<_i8.SearchRepository>(
      () => _i9.SearchRepositoryImpl(gh<_i7.SearchLocalSource>()));
  gh.lazySingleton<_i10.BlogsRemoteSource>(
      () => _i10.BlogsRemoteSourceImpl(gh<_i4.Dio>()));
  gh.lazySingleton<_i11.BlogsRepository>(
      () => _i12.BlogsRepositoryImpl(gh<_i10.BlogsRemoteSource>()));
  gh.factory<_i13.PlatformChannelCubit>(
      () => _i13.PlatformChannelCubit(gh<_i5.PlatformChannelRepository>()));
  gh.factory<_i14.SearchCubit>(
      () => _i14.SearchCubit(gh<_i8.SearchRepository>()));
  gh.factory<_i15.BlogsCubit>(
      () => _i15.BlogsCubit(gh<_i11.BlogsRepository>()));
  return getIt;
}

class _$RegisterModules extends _i16.RegisterModules {}
