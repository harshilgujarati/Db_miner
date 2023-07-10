import 'package:db_miner_app/components/quotes_details.dart';
import 'package:db_miner_app/views/screens/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(
          name: '/',
          page: () => Mainpage(),
        ),
        GetPage(
          name: '/quotes_details',
          page: () => quotes_details(),
        ),
      ],
    ),
  );
}
