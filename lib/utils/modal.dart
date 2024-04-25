class FestivalPost {
  final String festival;
  final String quote;
  final String category;
  final DateTime datePosted;
  final String imageUrl;

  FestivalPost({
    required this.festival,
    required this.quote,
    required this.category,
    required this.datePosted,
    required this.imageUrl,
  });

  factory FestivalPost.fromMap(Map<String, dynamic> key) {
    return FestivalPost(
      festival: key['festival'],
      quote: key['quote'],
      category: key['category'],
      datePosted: DateTime.parse(key['datePosted']),
      imageUrl: key['imageUrl'],
    );
  }

  Map<String, dynamic> get toMap => {
        'festival': festival,
        'quote': quote,
        'category': category,
        'datePosted': datePosted.toIso8601String(),
        'imageUrl': imageUrl,
      };
}
