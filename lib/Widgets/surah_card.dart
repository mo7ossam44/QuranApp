import 'package:flutter/material.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/screens/ayat_page.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key, required this.surahModel});

  final SurahModel surahModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              AyatPage(surahModel: surahModel, surahNumber: surahModel.number),
        ),
      ),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.green,
            child: Text(
              '${surahModel.number}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Antic',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Row(
            children: [
              Text(
                '${surahModel.englishName} ',
                style: TextStyle(
                  fontFamily: 'Antic',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '(${surahModel.revelationType})',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Antic',
                ),
              ),
            ],
          ),
          subtitle: Text(
            '${surahModel.numberOfAyahs} Ayah',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontFamily: 'Antic',
            ),
          ),
          trailing: Text(
            surahModel.name.replaceAll('سُورَةُ', ''),
            style: TextStyle(fontSize: 21, fontFamily: 'KFGQPC'),
          ),
        ),
      ),
    );
  }
}
