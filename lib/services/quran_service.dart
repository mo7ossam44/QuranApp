import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:quran_app/models/ayat_model.dart';
import 'package:quran_app/models/surah_model.dart';

class QuranService {
  final dio = Dio();

  Future<List<SurahModel>> getSurah() async {
    Response response = await dio.get('https://api.alquran.cloud/v1/surah');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> data = jsonData['data'];
    List<SurahModel> surahModelList = [];
    for (var surah in data) {
      SurahModel surahModel = SurahModel(
        name: surah['name'],
        number: surah['number'],
        englishName: surah['englishName'],
        numberOfAyahs: surah['numberOfAyahs'],
        revelationType: surah['revelationType'],
      );
      surahModelList.add(surahModel);
    }
    return surahModelList;
  }

  Future<List<AyatModel>> getAyah({required int surahNumber}) async {
    Response response = await dio.get(
      'https://api.alquran.cloud/v1/surah/$surahNumber/ar',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> ayaData = jsonData['data']['ayahs'];
    List<AyatModel> ayatModelList = [];
    for (var ayah in ayaData) {
      AyatModel aya = AyatModel(
        page: ayah['page'],
        text: ayah['text'],
        numberInSurah: ayah['numberInSurah'],
      );
      ayatModelList.add(aya);
    }
    return ayatModelList;
  }
}
