import 'package:flutter/material.dart';
import 'package:get/get.dart';

class settings_page extends StatefulWidget {
  const settings_page({super.key});

  @override
  State<settings_page> createState() => _settings_pageState();
}

class _settings_pageState extends State<settings_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                if (Get.isDarkMode == true) {
                  Get.changeTheme(ThemeData.light(useMaterial3: true));
                } else {
                  Get.changeTheme(ThemeData.dark(useMaterial3: true));
                }
                setState(() {});
              },
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 400,
                child: Text(
                  "Dark Theme",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0e1c26),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffa4c6b8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 400,
                child: Text(
                  "Remove Ads",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0e1c26),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffa4c6b8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 400,
                child: Text(
                  "Language",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0e1c26),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffa4c6b8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 400,
                child: Text(
                  "Rate Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0e1c26),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffa4c6b8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 400,
                child: Text(
                  "Share",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0e1c26),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffa4c6b8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 400,
                child: Text(
                  "More Apps",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0e1c26),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffa4c6b8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 400,
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0e1c26),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffa4c6b8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
