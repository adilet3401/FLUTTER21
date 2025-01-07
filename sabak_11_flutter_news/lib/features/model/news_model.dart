class Articles {
  Articles({
    required this.author,
    required this.tittle,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  final String? author;
  final String? tittle;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
}

class Source {
  Source({required this.name});
  final String? name;
}
