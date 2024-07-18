import 'package:flutter_mvvm/domain/models/article/article.dart';

abstract class ArticleUseCases {
  Future<List<Article>> getArticles();
}
