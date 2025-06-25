import 'package:flutter/material.dart';
import 'package:quran_app/models/surah_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key, required this.surahModel});

  final SurahModel surahModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.green,
          child: Text(
            '${surahModel.number}',
            style: TextStyle(color: Colors.white),
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
            Text('(${surahModel.revelationType})'),
          ],
        ),
        subtitle: Row(
          children: [
            Text('• ', style: TextStyle(color: Colors.green, fontSize: 20)),
            Text(
              surahModel.englishNameTranslation,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        trailing: Text(
          surahModel.name.replaceAll('سُورَةُ', ''),
          style: TextStyle(fontSize: 21, fontFamily: 'KFGQPC'),
        ),
      ),
    );
  }
}
