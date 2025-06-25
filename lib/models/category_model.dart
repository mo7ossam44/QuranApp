import 'package:flutter/widgets.dart';

class CategoryModel {
  final String name;
  final String image;
  final Widget targetPage;

  CategoryModel({required this.targetPage, required this.image, required this.name});
}
