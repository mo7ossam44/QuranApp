import 'package:flutter/material.dart';

import 'package:quran_app/models/zeker_category_model.dart';
import 'package:quran_app/screens/azkar_page.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key, required this.azkarModel});

  final ZekerCategoryModel azkarModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AzkarPage(categoryName: azkarModel.category),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          trailing: Text(
            azkarModel.category,
            style: TextStyle(
              fontFamily: 'expo',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          leading: Icon(Icons.arrow_back_ios, color: Colors.green),
        ),
      ),
    );
  }
}
