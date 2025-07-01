import 'package:dio/dio.dart';
import 'package:quran_app/models/prayer_time_model.dart';

class PrayerTimeService {
  final dio = Dio();

  Future<PrayerTimeModel> getPrayerTimes() async {
    Response response = await dio.get(
      'https://api.aladhan.com/v1/timings/30-06-2025?latitude=30.0444&longitude=31.2357&method=5',
    );

    final jsonData = response.data;
    final data = jsonData['data']['timings'];

    return PrayerTimeModel(
      fajr: data['Fajr'] ?? '',
      dhuhr: data['Dhuhr'] ?? '',
      asr: data['Asr'] ?? '',
      maghrib: data['Maghrib'] ?? '',
      isha: data['Isha'] ?? '',
    );
  }
}
