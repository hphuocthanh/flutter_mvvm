class PathParams {
  static const id = 'id';
}

class RoutesNames {
  static const home = 'home';
  static const articles = 'articles';
  static const articleDetails = 'article';
  static const user = 'user';
}

// Nested routes defined here, which has to come from RoutesNames
class PathSegments {
  static const articles = RoutesNames.articles;
  static const user = RoutesNames.user;
}

class Routes {
  static articles() => '/${PathSegments.articles}';
  static user() => '/${PathSegments.user}';
  static article(String id) => '/${PathSegments.articles}/$id';
}
