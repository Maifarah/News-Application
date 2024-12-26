import 'package:flutter/material.dart';
import 'package:news_application/widgets/category_list_view.dart';
import 'package:news_application/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 32),
            ),
            const NewsListViewBuilder(
              category: 'general',
            ),

            // SliverToBoxAdapter(

            //   child: Column(
            // children: [
            //   CategoriesListView(),
            //   const SizedBox(
            //     height: 32,
            //   ),
            //   NewsListView(),
            // ],
            // ),
            // )
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
