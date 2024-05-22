class AllAdsItem {
  String title;
  int rating;
  String season;
  String landmark;
  String price;

  AllAdsItem({
    required this.title,
    required this.rating,
    required this.season,
    required this.landmark,
    required this.price,
  });

  factory AllAdsItem.fromJson(Map<String, dynamic> data) => AllAdsItem(
        title: data['title'],
        rating: data['rating'],
        season: data['season'],
        landmark: data['landmark'],
        price: data['price'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'rating': rating,
        'season': season,
        'landmark': landmark,
        'price': price,
      };
}
