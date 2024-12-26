import 'package:flutter/material.dart';
import 'package:news_application/models/artical_model.dart';
import 'package:news_application/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articalListModel;

  const NewsListView({super.key, required this.articalListModel});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articalListModel.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(articalModel: articalListModel[index]),
          );
        },
      ),
    );
  }
}
