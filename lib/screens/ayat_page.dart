import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/ayat_card.dart';
import 'package:quran_app/models/ayat_model.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/services/quran_service.dart';

class AyatPage extends StatefulWidget {
  AyatPage({super.key, required this.surahModel, required this.surahNumber});

  final SurahModel surahModel;
  final int surahNumber;

  @override
  State<AyatPage> createState() => _AyatPageState();
}

class _AyatPageState extends State<AyatPage> {
  List<AyatModel> ayah = [];

  bool isLoaded = true;

  @override
  void initState() {
    super.initState();
    getAyayMethod();
  }

  Future<void> getAyayMethod() async {
    ayah = await QuranService().getAyah(surahNumber: widget.surahNumber);
    isLoaded = false;
    if (!mounted) return; // ← تأكد إن الصفحة لسه في الشجرة
    setState(() {
      isLoaded = false;
    });
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
          widget.surahModel.name,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontFamily: 'KFGQPC',
          ),
        ),
      ),
      body: isLoaded
          ? Center(child: CircularProgressIndicator(color: Colors.green))
          : ListView.builder(
              itemCount: ayah.length,
              itemBuilder: (context, index) {
                return AyatCard(ayatModel: ayah[index]);
              },
            ),
    );
  }
}
