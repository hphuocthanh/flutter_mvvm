import 'package:flutter_mvvm/data/modules/api/api_service.dart';
import 'package:flutter_mvvm/domain/models/article/article.dart';
import 'package:flutter_mvvm/domain/use_cases/article_use_cases.dart';

class ArticleInteractor implements ArticleUseCases {
  final ApiService apiService;

  ArticleInteractor({required this.apiService});

  @override
  Future<List<Article>> getArticles() async {
    final response = await apiService.getMediumRssFeed();
    return [];
  }
}
