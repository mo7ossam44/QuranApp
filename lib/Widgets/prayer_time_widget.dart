import 'package:flutter/material.dart';
import 'package:quran_app/models/prayer_time_model.dart';

class PrayerTimeWidget extends StatelessWidget {
  const PrayerTimeWidget({
    super.key,
    required this.prayersData,
  });

  final PrayerTimeModel? prayersData;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${prayersData!.fajr} am',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' الفجر',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${prayersData!.dhuhr} pm',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' الظهر',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${prayersData!.asr} pm',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' العصر',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${prayersData!.maghrib} pm',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'المغرب',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${prayersData!.isha} pm',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'العشاء',
                  style: TextStyle(
                    fontFamily: 'expo',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
