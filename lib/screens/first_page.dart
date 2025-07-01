import 'package:flutter/material.dart';
import 'package:quran_app/Widgets/my_material_button.dart';
import 'package:quran_app/screens/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //? SizedBox
            SizedBox(height: 20),
            //? Text -> Quran
            Text(
              'Zeker',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            //? SizedBox
            SizedBox(height: 15),
            //? Text -> Stay Connected to your Quran
            Text(
              'Stay \nConnected to your Quran',
              style: TextStyle(
                fontSize: 60,
                height: 1.3,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            //? SizedBox
            SizedBox(height: 30),
            //? Button -> GetStarted
            MyMaterialButton(
              textButton: 'Get Started',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
            ),
            //? SizedBox
            SizedBox(height: 30),
            //? Photo of Mosque with white background
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/mosq.png'),
            ),
          ],
        ),
      ),
    );
  }
}
