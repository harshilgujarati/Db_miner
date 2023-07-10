import 'package:db_miner_app/components/categories_page.dart';
import 'package:db_miner_app/components/fevorites_page.dart';
import 'package:db_miner_app/components/settings_page.dart';
import 'package:db_miner_app/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  NavigationController navigationController = Get.put(NavigationController());
  final List<Widget> _pages = [
    const HomePage(),
    const fevorites_page(),
    const settings_page(),
  ];

  void onDestinationSelected(int index) {
    setState(() {
      navigationController.intialIndex = index;
      navigationController.pageController.animateToPage(index,
          curve: Curves.bounceInOut,
          duration: const Duration(milliseconds: 300));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jumping Minds",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              if (Get.isDarkMode == true) {
                Get.changeTheme(ThemeData.light(useMaterial3: true));
              } else {
                Get.changeTheme(ThemeData.dark(useMaterial3: true));
              }
              setState(() {});
            },
            icon: Icon(Icons.sunny),
          ),
        ],
      ),
      body: PageView(
        controller: navigationController.pageController,
        onPageChanged: (value) {
          setState(() {
            navigationController.intialIndex = value;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationController.intialIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.category_sharp), label: 'categories'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'favorites'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
