import 'package:warhouse_qr_code/common/di/injection.config.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init();
  getIt.registerLazySingleton(
    () => AppRouter(),
  );
}
