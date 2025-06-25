import 'package:dio/dio.dart';
import 'package:quran_app/models/surah_model.dart';

class QuranService {
  final dio = Dio();

  Future<List<SurahModel>> getSurah() async {
    Response response = await dio.get('http://api.alquran.cloud/v1/surah');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> surahData = jsonData['data'];
    List<SurahModel> surahModelList = [];
    for (var surah in surahData) {
      SurahModel surahModel = SurahModel(
        number: surah['number'],
        name: surah['name'],
        englishName: surah['englishName'],
        englishNameTranslation: surah['englishNameTranslation'],
        numberOfAyahs: surah['numberOfAyahs'],
        revelationType: surah['revelationType'],
      );
      surahModelList.add(surahModel);
    }
    return surahModelList;
  }
}
