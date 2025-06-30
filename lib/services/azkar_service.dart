import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:quran_app/models/azkar_model.dart';
import 'package:quran_app/models/zeker_category_model.dart';

class AzkarService {
  Future<List<ZekerCategoryModel>> getCategoriesAzkar() async {
    String response = await rootBundle.loadString(
      'assets/jsonFiles/adhkar.json',
    );
    List<dynamic> jsonData = json.decode(response);
    List<ZekerCategoryModel> zekerCategoryModel = [];
    for (var zeker in jsonData) {
      ZekerCategoryModel azkar = ZekerCategoryModel.fromJson(zeker);
      zekerCategoryModel.add(azkar);
    }
    return zekerCategoryModel;
  }

  Future<List<AzkarModel>> getAzkar({required String categoryNameString}) async {
    String response = await rootBundle.loadString(
      'assets/jsonFiles/adhkar.json',
    );
    List<dynamic> jsonData = json.decode(response);
    List<AzkarModel> azkarData = [];
    for (var zeker in jsonData) {
      AzkarModel azkar = AzkarModel.fromJson(zeker);
      azkarData.add(azkar);
    }
    return azkarData;
  }
}
