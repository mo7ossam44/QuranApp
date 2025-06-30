import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/gridview_builder.dart';
import 'package:quran_app/Widgets/mohamed_hossam_widget.dart';
import 'package:quran_app/Widgets/time-container_widget.dart';
import 'package:quran_app/models/category_model.dart';
import 'package:quran_app/screens/prayer_time_page.dart';
import 'package:quran_app/screens/qibla_page.dart';
import 'package:quran_app/screens/quran_page.dart';
import 'package:quran_app/screens/tasbeh_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CategoryModel> categoryModel = [
    CategoryModel(
      targetPage: QuranPage(),
      image: 'assets/images/quran.png',
      name: 'القرأن',
    ),
    CategoryModel(
      targetPage: TasbehPage(),
      image: 'assets/images/praying.png',
      name: 'الأذكار',
    ),
    CategoryModel(
      targetPage: PrayerTimePage(),
      image: 'assets/images/time.png',
      name: 'ميعاد الصلاة',
    ),
    CategoryModel(
      targetPage: QiblaPage(),
      image: 'assets/images/qibla.png',
      name: 'القبلة',
    ),
    CategoryModel(
      targetPage: QuranPage(),
      image: 'assets/images/halal.png',
      name: 'الطعام الحلال',
    ),
    CategoryModel(
      targetPage: QuranPage(),
      image: 'assets/images/calendar.png',
      name: 'التاريخ الهجري',
    ),
    CategoryModel(
      targetPage: QuranPage(),
      image: 'assets/images/infaq.png',
      name: 'إنفاق',
    ),
    CategoryModel(
      targetPage: QuranPage(),
      image: 'assets/images/halal.png',
      name: 'الطعام الحلال',
    ),
    CategoryModel(
      targetPage: QuranPage(),
      image: 'assets/images/infaq.png',
      name: 'إنفاق',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            MohamedHossamWidget(),
            SizedBox(height: 20),
            TimeContainerWidget(),
            SizedBox(height: 30),
            GridViewBuilder(categoryModel: categoryModel),
          ],
        ),
      ),
    );
  }
}
