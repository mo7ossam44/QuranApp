import 'package:flutter/material.dart';
import 'package:quran_app/screens/first_page.dart';
import 'package:quran_app/services/prayer_time_service.dart';

void main() {
  runApp(const MyApp());
  PrayerTimeService().getPrayerTimes();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage()),
    );
  }
}
