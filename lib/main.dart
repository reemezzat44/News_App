import 'package:flutter/material.dart';
import 'package:news/views/home_view.dart';

void main() {
 // NewsServices(Dio()).getNews();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
