class ArticalModel {
  final String? image;
  final String titleText;
  final String? subtitleText;
  final String articalLink;

  ArticalModel({
    required this.image,
    required this.titleText,
    required this.subtitleText,
    required this.articalLink,
  });

  factory ArticalModel.fromJson(jason) {
    return ArticalModel(
      image: jason['urlToImage'],
      titleText: jason['title'],
      subtitleText: jason['description'],
      articalLink: jason['url'],
    );
  }
}
