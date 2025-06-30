import 'package:flutter/material.dart';

class AddRemoveWidget extends StatefulWidget {
  const AddRemoveWidget({super.key});

  @override
  State<AddRemoveWidget> createState() => _AddRemoveWidgetState();
}

class _AddRemoveWidgetState extends State<AddRemoveWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            icon: Icon(Icons.add),
            color: Colors.white,
            iconSize: 40,
          ),
        ),
        Text('$count', style: TextStyle(fontSize: 30, color: Colors.green)),
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                count--;
              });
            },
            icon: Icon(Icons.remove),
            color: Colors.white,
            iconSize: 40,
          ),
        ),
      ],
    );
  }
}
