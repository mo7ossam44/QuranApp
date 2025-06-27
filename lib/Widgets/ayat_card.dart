import 'package:flutter/material.dart';
import 'package:quran_app/models/ayat_model.dart';

class AyatCard extends StatelessWidget {
  const AyatCard({super.key, required this.ayatModel});
  final AyatModel ayatModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, top: 20, left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.green,
                child: Text(
                  '${ayatModel.numberInSurah}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  ayatModel.text,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20, fontFamily: 'KFGQPC'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
