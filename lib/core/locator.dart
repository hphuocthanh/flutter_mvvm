import 'package:flutter_mvvm/core/locator_interactors.dart';
import 'package:flutter_mvvm/core/locator_modules.dart';
import 'package:flutter_mvvm/core/locator_screens.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> serviceLocatorInitialization() async {
  await getIt.reset();
  initializeModules();
  initializeInteractors();
  initializeScreens();
  await getIt.allReady();
}
