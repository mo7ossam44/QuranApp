import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/azkar_card.dart';
import 'package:quran_app/models/zeker_category_model.dart';
import 'package:quran_app/services/azkar_service.dart';

class TasbehPage extends StatefulWidget {
  TasbehPage({super.key});

  @override
  State<TasbehPage> createState() => _TasbehPageState();
}

class _TasbehPageState extends State<TasbehPage> {
  List<ZekerCategoryModel> azkarCategories = [];

  @override
  void initState() {
    super.initState();
    getAzkarCategoriea();
  }

  Future<void> getAzkarCategoriea() async {
    azkarCategories = await AzkarService().getCategoriesAzkar();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.green, size: 27),
        title: Text(
          'الأذكار',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontFamily: 'expo',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: azkarCategories.length,
        itemBuilder: (context, index) {
          return AzkarCard(azkarModel: azkarCategories[index]);
        },
      ),
    );
  }
}
