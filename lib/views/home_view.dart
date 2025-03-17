import 'package:flutter/material.dart';
import 'package:news/widgets/categories_list_view.dart';
import 'package:news/widgets/new_list_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Row(
                
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "Cloud",
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                //like children
                SliverToBoxAdapter(child: CategoriesListView()),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: 30,
                )),

                newsListViewBuilder(category: 'general',),
              ],
            )

            // child: Column(
            //   children: [
            //     CategoriesListView(),
            //     SizedBox(height: 30,),
            //     NewListView(),
            //   ],
            // ),
            ));
  }
}

