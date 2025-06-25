
import 'package:flutter/material.dart';

class TimeContainerWidget extends StatelessWidget {
  const TimeContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 188, 232, 184),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Duher', style: TextStyle(fontSize: 17)),
                Text(
                  '10.45 Am',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '2 hours left unti duher',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            Image.asset('assets/images/calendar.png', width: 100),
          ],
        ),
      ),
    );
  }
}
