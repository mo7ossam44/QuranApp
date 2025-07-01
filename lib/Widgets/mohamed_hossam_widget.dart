import 'package:flutter/material.dart';

class MohamedHossamWidget extends StatelessWidget {
  const MohamedHossamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'تطبيق ذكر',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'expo',
          fontSize: 30,
          color: Colors.green,
        ),
      ),
    );
  }
}
