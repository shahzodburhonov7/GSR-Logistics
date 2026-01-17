// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:warhouse_qr_code/common/auth_interceptor/auth_interceptor.dart'
    as _i1063;
import 'package:warhouse_qr_code/common/di/app_module.dart' as _i1069;
import 'package:warhouse_qr_code/common/di/network_module.dart' as _i54;
import 'package:warhouse_qr_code/common/widgets/display/display.dart' as _i346;
import 'package:warhouse_qr_code/common/widgets/display/display_impl.dart'
    as _i483;
import 'package:warhouse_qr_code/data/auth_data/auth_api.dart' as _i116;
import 'package:warhouse_qr_code/data/auth_data/auth_repo_impl.dart' as _i482;
import 'package:warhouse_qr_code/data/start_repo_impl.dart' as _i887;
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart' as _i444;
import 'package:warhouse_qr_code/domain/model/storage/storage.dart' as _i235;
import 'package:warhouse_qr_code/domain/repo/start_repo.dart' as _i888;
import 'package:warhouse_qr_code/features/db_select/cubit/db_select_cubit.dart'
    as _i865;
import 'package:warhouse_qr_code/features/locations/cubit/locations_cubit.dart'
    as _i472;
import 'package:warhouse_qr_code/features/login/cubit/login_cubit.dart'
    as _i440;
import 'package:warhouse_qr_code/features/operations/cubit/operations_cubit.dart'
    as _i406;
import 'package:warhouse_qr_code/features/products/cubit/products_cubit.dart'
    as _i697;
import 'package:warhouse_qr_code/features/scanner/cubit/scanner_cubit.dart'
    as _i246;
import 'package:warhouse_qr_code/features/service_ws/odoo_socket_service.dart'
    as _i850;
import 'package:warhouse_qr_code/features/splash/cubit/splash_cubit.dart'
    as _i79;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i865.DbSelectCubit>(() => _i865.DbSelectCubit());
    gh.lazySingleton<_i850.OdooSocketService>(() => _i850.OdooSocketService());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.lazySingleton<_i1063.LocaleProvider>(() => _i1063.LocaleProvider());
    await gh.lazySingletonAsync<_i235.Storage>(
      () => _i235.Storage.create(),
      preResolve: true,
    );
    gh.factory<_i888.StartRepo>(() => _i887.StartRepoImpl(gh<_i235.Storage>()));
    gh.factory<_i79.SplashCubit>(() => _i79.SplashCubit(
          gh<_i888.StartRepo>(),
          gh<_i235.Storage>(),
        ));
    gh.lazySingleton<_i1063.AuthInterceptor>(() => _i1063.AuthInterceptor(
          gh<_i235.Storage>(),
          gh<_i1063.LocaleProvider>(),
        ));
    gh.singleton<_i346.Display>(() => _i483.DisplayImpl());
    gh.factory<_i361.Dio>(
        () => networkModule.dio(gh<_i1063.AuthInterceptor>()));
    gh.factory<_i116.AuthApi>(() => _i116.AuthApi(
          gh<_i361.Dio>(),
          storage: gh<_i235.Storage>(),
        ));
    gh.factory<_i444.AuthRepository>(() => _i482.AuthRepoImpl(
          gh<_i116.AuthApi>(),
          gh<_i235.Storage>(),
        ));
    gh.factory<_i472.LocationsCubit>(() => _i472.LocationsCubit(
          gh<_i444.AuthRepository>(),
          storage: gh<_i235.Storage>(),
        ));
    gh.factory<_i246.ScannerCubit>(() => _i246.ScannerCubit(
          gh<_i444.AuthRepository>(),
          storage: gh<_i235.Storage>(),
        ));
    gh.factory<_i440.LoginCubit>(() => _i440.LoginCubit(
          gh<_i444.AuthRepository>(),
          storage: gh<_i235.Storage>(),
        ));
    gh.factory<_i697.ProductsCubit>(() => _i697.ProductsCubit(
          gh<_i444.AuthRepository>(),
          gh<_i850.OdooSocketService>(),
          storage: gh<_i235.Storage>(),
        ));
    gh.factory<_i406.OperationsCubit>(() => _i406.OperationsCubit(
          gh<_i444.AuthRepository>(),
          socketService: gh<_i850.OdooSocketService>(),
          storage: gh<_i235.Storage>(),
        ));
    return this;
  }
}

class _$AppModule extends _i1069.AppModule {}

class _$NetworkModule extends _i54.NetworkModule {}
