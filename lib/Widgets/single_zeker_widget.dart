import 'package:flutter/material.dart';
import 'package:quran_app/screens/single_zeker_page.dart';

class SingleZekerWidget extends StatelessWidget {
  const SingleZekerWidget({
    super.key,
    required this.widget,
  });

  final SingleZekerPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        widget.azkarModel.text,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontFamily: 'expo',
          fontSize: 25,
          height: 1.9,
          color: Colors.white,
        ),
      ),
    );
  }
}
