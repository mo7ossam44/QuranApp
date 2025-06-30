// class ZekerCategoryModel {
//   final int id;
//   final String categoryName;

//   ZekerCategoryModel({required this.categoryName, required this.id});

//   factory ZekerCategoryModel.fromJson(Map<String, dynamic> json) {
//     return ZekerCategoryModel(categoryName: json['category'], id: json['id']);
//   }
// }
import 'package:quran_app/models/azkar_model.dart';

class ZekerCategoryModel {
  final int id;
  final String category;
  final String audio;
  final String filename;
  final List<AzkarModel> array;

  ZekerCategoryModel({
    required this.id,
    required this.category,
    required this.audio,
    required this.filename,
    required this.array,
  });

  factory ZekerCategoryModel.fromJson(Map<String, dynamic> json) {
    return ZekerCategoryModel(
      id: json['id'],
      category: json['category'],
      audio: json['audio'],
      filename: json['filename'],
      array: (json['array'] as List)
          .map((item) => AzkarModel.fromJson(item))
          .toList(),
    );
  }
}
