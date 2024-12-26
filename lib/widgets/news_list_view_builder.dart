import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/models/artical_model.dart';
import 'package:news_application/services/news_services.dart';
import 'package:news_application/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? NewsListView(
                  articalListModel: snapshot.data!,
                )
              : snapshot.hasError
                  ? const SliverToBoxAdapter(
                      child:
                          Text('OOPS There Is An Error , Try Again Later.. '),
                    )
                  : const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(child: CircularProgressIndicator()),
                    );
        });
    // return isLoading
    //     ? const SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : articalListModel.isNotEmpty
    //         ? NewsListView(
    //             articalListModel: articalListModel,
    //           )
    //         : const SliverToBoxAdapter(
    //             child: Text('OOPS There Is An Error , Try Again Later.. '));
  }
}
