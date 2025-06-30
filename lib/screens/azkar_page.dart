import 'package:flutter/material.dart';
import 'package:quran_app/models/azkar_model.dart';
import 'package:quran_app/models/zeker_category_model.dart';
import 'package:quran_app/screens/home_page.dart';
import 'package:quran_app/screens/single_zeker_page.dart';
import 'package:quran_app/services/azkar_service.dart';

class AzkarPage extends StatefulWidget {
  const AzkarPage({super.key, required this.zekerCategoryModel});
  final ZekerCategoryModel zekerCategoryModel;

  @override
  State<AzkarPage> createState() => _AzkarPageState();
}

class _AzkarPageState extends State<AzkarPage> {
  List<AzkarModel> azkarList = [];

  @override
  void initState() {
    super.initState();
    getZeker();
  }

  Future<List<AzkarModel>> getZeker() async => azkarList = await AzkarService()
      .getAzkar(categoryNameString: widget.zekerCategoryModel.category);

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
          widget.zekerCategoryModel.category,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontFamily: 'expo',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.zekerCategoryModel.array.length,
        itemBuilder: (context, index) {
          final azkar = widget.zekerCategoryModel.array[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SingleZekerPage(
                    azkarModel: azkar,
                    zekerCategoryModel: widget.zekerCategoryModel,
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    azkar.text,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'expo',
                      letterSpacing: 0.5,
                      color: Colors.green,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
