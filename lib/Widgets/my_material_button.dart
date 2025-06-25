import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({
    super.key,
    required this.textButton,
    required this.ontap,
  });

  final String textButton;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(textButton),
      color: Colors.green.shade800,
      textColor: Colors.white,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
    );
  }
}
