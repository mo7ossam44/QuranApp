import 'package:flutter/material.dart';
import 'package:quran_app/models/azkar_model.dart';
import 'package:quran_app/services/azkar_service.dart';

class AzkarPage extends StatefulWidget {
  const AzkarPage({super.key, required this.categoryName});
  final String categoryName;

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
      .getAzkar(categoryNameString: widget.categoryName);

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
          widget.categoryName,
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold , fontFamily: 'expo'),
        ),
      ),
      body: ListView.builder(
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Text(
                  azkarList[index].text,
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
