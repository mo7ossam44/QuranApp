import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class TimeContainerWidget extends StatefulWidget {
  const TimeContainerWidget({super.key});

  @override
  State<TimeContainerWidget> createState() => _TimeContainerWidgetState();
}

class _TimeContainerWidgetState extends State<TimeContainerWidget> {
  String _timeString = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
    Timer.periodic(Duration(seconds: 60), (Timer t) => _updateTime());
  }

  void _updateTime() {
    final now = DateTime.now();
    final formattedTime = DateFormat('h:mm a').format(now);
    setState(() {
      _timeString = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 183, 255, 214), // أخضر فاتح جدًا
            Color(0xFFDFF1E8), // أخضر أغمق حاجة بسيطة
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Duher',
                  style: TextStyle(fontSize: 17, fontFamily: 'Antic'),
                ),
                Text(
                  _timeString,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 40,
                    fontFamily: 'expo',
                  ),
                ),
                Text(
                  '2 hours left unti duher',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Antic',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/clock2.png', width: 100),
          ],
        ),
      ),
    );
  }
}
