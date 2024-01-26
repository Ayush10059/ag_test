// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ag_test/src/core/di/register_modules.dart' as _i13;
import 'package:ag_test/src/core/routes/app_router.dart' as _i3;
import 'package:ag_test/src/features/blogs/data/repo/blogs_repository_impl.dart'
    as _i10;
import 'package:ag_test/src/features/blogs/data/source/blogs_remote_source.dart'
    as _i8;
import 'package:ag_test/src/features/blogs/domain/repo/blogs_repository.dart'
    as _i9;
import 'package:ag_test/src/features/blogs/presentation/cubit/blogs_cubit.dart'
    as _i12;
import 'package:ag_test/src/features/search/data/repo/search_repository_impl.dart'
    as _i7;
import 'package:ag_test/src/features/search/data/source/search_local_source.dart'
    as _i5;
import 'package:ag_test/src/features/search/domain/search_repository.dart'
    as _i6;
import 'package:ag_test/src/features/search/presentation/cubit/search_cubit.dart'
    as _i11;
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
  gh.lazySingleton<_i5.SearchLocalSource>(
      () => _i5.SearchLocalSourceImpl(gh<_i4.Dio>()));
  gh.lazySingleton<_i6.SearchRepository>(
      () => _i7.SearchRepositoryImpl(gh<_i5.SearchLocalSource>()));
  gh.lazySingleton<_i8.BlogsRemoteSource>(
      () => _i8.BlogsRemoteSourceImpl(gh<_i4.Dio>()));
  gh.lazySingleton<_i9.BlogsRepository>(
      () => _i10.BlogsRepositoryImpl(gh<_i8.BlogsRemoteSource>()));
  gh.factory<_i11.SearchCubit>(
      () => _i11.SearchCubit(gh<_i6.SearchRepository>()));
  gh.factory<_i12.BlogsCubit>(() => _i12.BlogsCubit(gh<_i9.BlogsRepository>()));
  return getIt;
}

class _$RegisterModules extends _i13.RegisterModules {}
