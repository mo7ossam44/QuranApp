import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/category_card.dart';
import 'package:quran_app/models/category_model.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
    required this.categoryModel,
  });

  final List<CategoryModel> categoryModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 15, // مسافة رأسية بين العناصر
          crossAxisSpacing: 15,
        ),
        itemCount: categoryModel.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categoryModel[index]);
        },
      ),
    );
  }
}