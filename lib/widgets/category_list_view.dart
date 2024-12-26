import 'package:flutter/material.dart';
import 'package:news_application/models/category_card_model.dart';
import 'package:news_application/widgets/category_card.dart';

// ignore: must_be_immutable
class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  List<CategoryCardModel> categoryModelList = [
    CategoryCardModel(
      image: 'assets/general.jpg',
      categoryName: 'General',
    ),
    CategoryCardModel(
      image: 'assets/sports.jpeg',
      categoryName: 'Sports',
    ),
    CategoryCardModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryCardModel(
      image: 'assets/entertainment.jpeg',
      categoryName: 'Entertainment',
    ),
    CategoryCardModel(
      image: 'assets/Business.jpeg',
      categoryName: 'Business',
    ),
    CategoryCardModel(
      image: 'assets/health.jpg',
      categoryName: 'Health',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryModelList.length,
        itemBuilder: (contex, index) {
          return CategoryCard(
            cardModel: categoryModelList[index],
          );
        },
      ),
    );
  }
}
