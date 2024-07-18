// BIND SCREENS TO ROUTES AND USE CASES HERE
import 'package:flutter_mvvm/core/locator.dart';
import 'package:flutter_mvvm/domain/models/article/article.dart';
import 'package:flutter_mvvm/domain/use_cases/article_use_cases.dart';
import 'package:flutter_mvvm/ui/routing/nested_navigator.dart';
import 'package:flutter_mvvm/ui/screens/_home/home_contract.dart';
import 'package:flutter_mvvm/ui/screens/_home/home_view.dart';
import 'package:flutter_mvvm/ui/screens/_home/home_view_model.dart';
import 'package:flutter_mvvm/ui/screens/article_details/article_details_contract.dart';
import 'package:flutter_mvvm/ui/screens/article_details/article_details_view-model.dart';
import 'package:flutter_mvvm/ui/screens/article_details/article_details_view.dart';
import 'package:flutter_mvvm/ui/screens/article_list/article_list_contract.dart';
import 'package:flutter_mvvm/ui/screens/article_list/article_list_view.dart';
import 'package:flutter_mvvm/ui/screens/article_list/article_list_view_model.dart';

void initializeScreens() {
  // HomeView
  getIt.registerFactory<HomeVMContract>(
    () => HomeViewModel(),
  );
  getIt.registerFactory<HomeVMState>(
    () => HomeVMState(),
  );
  getIt.registerFactoryParam<HomeView, NestedNavigator, void>(
    (nestedNavigator, _) => HomeView(nestedNavigator: nestedNavigator),
  );

  // ArticleListView
  getIt.registerFactory<ArticleListVMContract>(
    () => ArticleListViewModel(articleInteractor: getIt<ArticleUseCases>()),
  );
  getIt.registerFactory<ArticleListVMState>(() => ArticleListVMState());
  getIt.registerFactoryParam<ArticleListView, String?, void>(
    (articleId, _) => ArticleListView(initialArticleId: articleId),
  );

  // ArticleDetailsView
  getIt.registerFactory<ArticleDetailsVMContract>(
      () => ArticleDetailsViewModel());
  getIt.registerFactory<ArticleDetailsVMState>(() => ArticleDetailsVMState());
  getIt.registerFactoryParam<ArticleDetailsView, Article, void>(
    (article, _) => ArticleDetailsView(article: article),
  );
}
