import 'package:flutter/material.dart';

import 'category_itom.dart';

class CategoryGrid extends StatelessWidget {
  final List<String> categoryNames;

  CategoryGrid({
    required this.categoryNames,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return CategoryGridItemWidget(
            seedsText: categoryNames[index],
          );
        },
        itemCount: categoryNames.length,
      ),
    );
  }
}
