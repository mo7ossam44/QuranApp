import 'package:flutter/material.dart';
import 'package:quran_app/screens/single_zeker_page.dart';

class RepeatWidget extends StatelessWidget {
  const RepeatWidget({
    super.key,
    required this.widget,
  });

  final SingleZekerPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            textDirection: TextDirection.rtl,
            '${widget.azkarModel.count}',
            style: TextStyle(
              color: Colors.green,
              fontFamily: 'expo',
              fontSize: 30,
            ),
          ),
          Spacer(),
          Text(
            textDirection: TextDirection.rtl,
            'عدد مرات التكرار',
            style: TextStyle(
              color: Colors.green,
              fontFamily: 'expo',
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}