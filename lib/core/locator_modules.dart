// BIND SERVICES THAT WILL BE USED THROUGHOUT THE APP HERE
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_mvvm/core/locator.dart';
import 'package:flutter_mvvm/data/modules/api/api_service.dart';
import 'package:flutter_mvvm/data/modules/shared_prefs_service.dart';

void initializeModules() {
  getIt.registerSingleton<ApiService>(
    ApiService(),
  );
  getIt.registerSingleton<SharedPrefsService>(
    SharedPrefsService(),
  );
  getIt.registerLazySingleton<BaseCacheManager>(
    () => DefaultCacheManager(),
  );
}
