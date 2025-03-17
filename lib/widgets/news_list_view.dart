import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/news_container.dart';


class NewListView extends StatelessWidget {
   NewListView({
    super.key,
    required this.articles
  });

 final List<ArticleModel> articles ;

//ctrl+shift+r to extract
  @override

//we need data before building the widget
  @override
  Widget build(BuildContext context) {
    return  SliverList(
            //lazy --> repeats an item number of times
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
              return NewsContainer(
                articleModel: articles[index],
              );
            }),
          );
  }
}
