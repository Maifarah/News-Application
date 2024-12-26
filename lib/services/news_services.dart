import 'package:dio/dio.dart';
import 'package:news_application/models/artical_model.dart';

class NewsServices {
  final Dio dio;
  // final String category;
  NewsServices(this.dio);

  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=8cfd38c6f57144fcaf63ad118f951060&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articals = jsonData['articles'];

      List<ArticalModel> articalsList = [];

      for (var artical in articals) {
        ArticalModel articalModel = ArticalModel.fromJson(artical);
        articalsList.add(articalModel);
      }

      return articalsList;
    } catch (e) {
      return [];
    }
  }
}
