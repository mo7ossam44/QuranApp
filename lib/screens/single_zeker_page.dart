import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/add_remove_widget.dart';
import 'package:quran_app/Widgets/repeat_widget.dart';
import 'package:quran_app/Widgets/single_zeker_widget.dart';
import 'package:quran_app/models/azkar_model.dart';
import 'package:quran_app/models/zeker_category_model.dart';

class SingleZekerPage extends StatefulWidget {
  SingleZekerPage({
    super.key,
    required this.azkarModel,
    required this.zekerCategoryModel,
  });
  final AzkarModel azkarModel;
  final ZekerCategoryModel zekerCategoryModel;

  @override
  State<SingleZekerPage> createState() => _SingleZekerPageState();
}

class _SingleZekerPageState extends State<SingleZekerPage> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            SingleZekerWidget(widget: widget),
            SizedBox(height: 30),
            RepeatWidget(widget: widget),
            SizedBox(height: 20),
            widget.azkarModel.count > 1 ? AddRemoveWidget() : SizedBox(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
