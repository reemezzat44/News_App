import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';


class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(imagePath: "assets/business.jpeg", categoryName: "Business"),
    CategoryModel(
        imagePath: "assets/entertaiment.avif", categoryName: "Entertainment"),
    CategoryModel(imagePath: "assets/genral.jpeg", categoryName: "General"),
    CategoryModel(imagePath: "assets/health.avif", categoryName: "Health"),
    CategoryModel(imagePath: "assets/science.avif", categoryName: "Science"),
    CategoryModel(imagePath: "assets/sports.jpeg", categoryName: "Sports"),
    CategoryModel(
        imagePath: "assets/technology.jpeg", categoryName: "Technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
