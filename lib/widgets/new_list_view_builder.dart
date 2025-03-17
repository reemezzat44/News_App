import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_list_view.dart';


class newsListViewBuilder extends StatefulWidget {
  const newsListViewBuilder({
    super.key,required this.category
  });

  final String category;

  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;

  void initState() {
    super.initState();
    future = NewsServices(
      Dio(),
    ).getNews(category: widget.category);
  }
  // List<ArticleModel> articles = [];
  // bool isLoading = true;

  //the first step it called just one time when the state be initialized

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Center(child: Text('Oops this was an error, try later')),
            );
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        },
        future: future);

    //  isLoading?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //  :articles.isNotEmpty? NewListView(articles: articles,)
    //  :SliverToBoxAdapter(child: Center(child: Text('Oops this was an error, try later')),);
  }
}
