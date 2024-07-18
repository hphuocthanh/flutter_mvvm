import 'package:flutter_mvvm/domain/models/article/article.dart';
import 'package:flutter_mvvm/domain/models/article/article_list_notifier.dart';
import 'package:flutter_mvvm/ui/screens/_base/base_contract.dart';

class ArticleListVMState extends BaseViewModelState {
  late final ArticleListProvider articleListProvider;
  late final String? initialArticleId;
  final List<bool> articleVisibilityList = [];
  List<Article> get articleList => articleListProvider.articleList;
}

abstract class ArticleListViewContract extends BaseViewContract {
  void goToArticleDetailsScreen(int index);
  void showErrorRetrievingArticlesSnackbar();
}

abstract class ArticleListVMContract
    extends BaseViewModelContract<ArticleListVMState, ArticleListViewContract> {
  void tapOnArticle(int index);
  void tapOnHideArticle(int index);
  void tapOnRefreshArticleList();
}
