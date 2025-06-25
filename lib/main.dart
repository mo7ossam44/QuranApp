import 'package:flutter/material.dart';
import 'package:quran_app/screens/first_page.dart';
import 'package:quran_app/screens/home_page.dart';
import 'package:quran_app/services/quran_service.dart';

void main() {
  QuranService().getSurah();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
