import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.imagePath), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 232, 167, 167),
          ),
          child: Center(
              child: Text(
            category.categoryName,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 19),
          )),
        ),
      ),
    );
  }
}
