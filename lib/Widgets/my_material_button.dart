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
      onPressed: ontap,
      color: Colors.white,
      textColor: Colors.green,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
      child: Text(textButton),
    );
  }
}
