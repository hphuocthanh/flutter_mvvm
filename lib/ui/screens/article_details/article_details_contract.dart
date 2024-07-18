import 'package:flutter_mvvm/domain/models/article/article.dart';
import 'package:flutter_mvvm/ui/screens/_base/base_contract.dart';

class ArticleDetailsVMState extends BaseViewModelState {
  late final Article article;
}

abstract class ArticleDetailsViewContract extends BaseViewContract {
  void goToExternalLink(String url);
}

abstract class ArticleDetailsVMContract extends BaseViewModelContract<
    ArticleDetailsVMState, ArticleDetailsViewContract> {
  void tapOnRefreshPage();
  void tapOnLink(String? url);
}
