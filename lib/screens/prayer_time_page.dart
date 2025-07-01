import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/prayer_time_widget.dart';
import 'package:quran_app/models/prayer_time_model.dart';
import 'package:quran_app/services/prayer_time_service.dart';

class PrayerTimePage extends StatefulWidget {
  const PrayerTimePage({super.key});

  @override
  State<PrayerTimePage> createState() => _PrayerTimePageState();
}

class _PrayerTimePageState extends State<PrayerTimePage> {
  PrayerTimeModel? prayersData;

  @override
  void initState() {
    super.initState();
    getPrayersTimes();
  }

  Future<void> getPrayersTimes() async {
    final data = await PrayerTimeService().getPrayerTimes();
    setState(() {
      prayersData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white, size: 27),
        title: Text(
          'ميعاد الصلاة',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'expo',
          ),
        ),
      ),
      body: prayersData == null
          ? Center(child: CircularProgressIndicator(color: Colors.white))
          : PrayerTimeWidget(prayersData: prayersData),
    );
  }
}
