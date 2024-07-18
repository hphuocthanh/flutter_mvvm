// BIND WHATEVER USE CASES TO THE REQUIRED SERVICES HERE
// example: binding api service to UserUseCase so that it can call api
// example 2: binding offline service to UserUseCase so that it can call offline service
import 'package:flutter_mvvm/core/locator.dart';
import 'package:flutter_mvvm/data/interactors/article_interactor.dart';
import 'package:flutter_mvvm/data/modules/api/api_service.dart';
import 'package:flutter_mvvm/domain/use_cases/article_use_cases.dart';

void initializeInteractors() {
  getIt.registerFactory<ArticleUseCases>(
    () => ArticleInteractor(apiService: getIt<ApiService>()),
  );
}
