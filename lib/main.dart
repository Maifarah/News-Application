import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_application/views/home_view.dart';

// final  ArticalModel articalModel;
GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeView()),
    // GoRoute(
    //     path: '/webview',
    //     builder: (context, state) {
    //       final articalModel = state.extra as ArticalModel;
    //       return WebView(
    //         link: articalModel.articalLink,
    //       );
    //     }),
    // GoRoute(path: '/', builder: (context, state) => const CategoryView(category: '',)),
  ],
);

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: HomeView(),
    // );
  }
}
