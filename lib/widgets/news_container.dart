import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //for giving border to something giving border radius as an attribute
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(articleModel.image??"https://picsum.photos/300/300"),
        ),
        SizedBox(
          height: 12,
        ),
         Text(
         articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle??"",
                    maxLines: 2,
          overflow: TextOverflow.ellipsis //three dots

          ,
          style: TextStyle(
            color: const Color.fromARGB(255, 148, 148, 148),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
