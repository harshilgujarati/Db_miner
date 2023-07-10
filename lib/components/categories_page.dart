import 'package:db_miner_app/controllers/quotes_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuotesController _quotesController = Get.put(QuotesController());

  List<String> category_images = [
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/advice.jpeg",
    "assets/images/dream.jpeg",
    "assets/images/attitude.jpeg",
    "assets/images/business 2.jpeg",
    "assets/images/learning.png",
    "assets/images/funny.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Obx(
          () => Container(
            alignment: Alignment.center,
            child: (_quotesController.quotes.isEmpty)
                ? const Text("No data available")
                : Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Popular Categories",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Expanded(
                        flex: 10,
                        child: GridView.builder(
                          itemCount: _quotesController.quotes.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,
                          ),
                          itemBuilder: (context, index) {
                            final quote = _quotesController.quotes[index];
                            return (index == null)
                                ? Container()
                                : GestureDetector(
                                    onTap: () {
                                      Get.toNamed("/quotes_details",
                                          arguments: quote);
                                    },
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: Get.height * 0.017,
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            height: Get.height * 0.1,
                                            width: Get.width * 0.4,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    '${category_images[index]}'),
                                                fit: BoxFit.cover,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.012,
                                        ),
                                        Text(
                                          quote.category,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                          },
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
