class Article {
  final String id;
  final String title;
  final String description;
  final String content;
  final List<String> keywords;
  final String url;
  final DateTime date;
  final String? coverImage;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.keywords,
    required this.url,
    required this.date,
    this.coverImage,
  });
}
