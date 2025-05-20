class CourseModel {
  final String imageUrl;
  final String batchLabel;
  final String daysLeftLabel;
  final String title;
  final String promoBadgeText;
  final String priceText;
  final String originalPriceText;
  final String discountText;

  CourseModel({
    required this.imageUrl,
    required this.batchLabel,
    required this.daysLeftLabel,
    required this.title,
    required this.promoBadgeText,
    required this.priceText,
    required this.originalPriceText,
    required this.discountText,
  });

  // Factory method to create a CourseModel from a map/json
  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      imageUrl: json['imageUrl'],
      batchLabel: json['batchLabel'],
      daysLeftLabel: json['daysLeftLabel'],
      title: json['title'],
      promoBadgeText: json['promoBadgeText'],
      priceText: json['priceText'],
      originalPriceText: json['originalPriceText'],
      discountText: json['discountText'],
    );
  }

  // Method to convert CourseModel to a map/json
  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'batchLabel': batchLabel,
      'daysLeftLabel': daysLeftLabel,
      'title': title,
      'promoBadgeText': promoBadgeText,
      'priceText': priceText,
      'originalPriceText': originalPriceText,
      'discountText': discountText,
    };
  }
}
