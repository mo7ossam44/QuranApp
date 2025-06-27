import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/surah_card.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/services/quran_service.dart';

class QuranPage extends StatefulWidget {
  QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  List<SurahModel> surah = [];

  bool isSerachOpend = false;
  bool isLoaded = true;
  SearchController searchController = SearchController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSurahData();
  }

  Future<void> getSurahData() async {
    surah = await QuranService().getSurah();
    isLoaded = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: isSerachOpend
            ? TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.green),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                cursorColor: Colors.green,
              )
            : Text(
                'Quran',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
        iconTheme: IconThemeData(color: Colors.green, size: 27),
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        actions: [
          isSerachOpend
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {});
                  },
                  icon: Icon(Icons.clear, size: 27),
                )
              : IconButton(
                  onPressed: () {
                    isSerachOpend = true;
                    setState(() {});
                  },
                  icon: Icon(Icons.search_rounded, size: 27),
                ),
        ],
      ),
      body: isLoaded
          ? Center(child: CircularProgressIndicator(color: Colors.green))
          : Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ListView.builder(
                itemCount: surah.length,
                itemBuilder: (context, index) {
                  return SurahCard(surahModel: surah[index]);
                },
              ),
            ),
    );
  }
}
