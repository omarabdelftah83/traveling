import 'package:flutter/material.dart';
import 'package:traveling/app_data.dart';
import 'package:traveling/widget/category_item.dart';

class CategoriesScreen1 extends StatelessWidget {
  const CategoriesScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              childAspectRatio: 13 / 8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children:
                Categories_data.map((e) => CategoryItem( e.id,e.title, e.imageUrl))
                    .toList(),
          ),
        ),
      ),
    );
  }
}
