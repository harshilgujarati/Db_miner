import 'package:db_miner_app/controllers/fevorite_controller.dart';
import 'package:db_miner_app/models/quotes_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class quotes_details extends StatefulWidget {
  const quotes_details({super.key});

  @override
  State<quotes_details> createState() => _quotes_detailsState();
}

class _quotes_detailsState extends State<quotes_details> {
  List<String> quotes_images = [
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
    "assets/images/advice.jpeg",
    "assets/images/love.jpeg",
    "assets/images/yourself.jpg",
    "assets/images/life.jpeg",
  ];
  fevoriteController add_fevorite_list = Get.put(fevoriteController());

  @override
  Widget build(BuildContext context) {
    QuoteModel quote = Get.arguments as QuoteModel;
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          "${quote.category}",
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: quote.quotes.length,
        itemBuilder: (context, i) {
          Quote indexofQuote = quote.quotes[i];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${quotes_images[i]}"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  width: 2,
                  color: Color(0xffa4c6b8),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "${indexofQuote.quote}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Autor ~ ${indexofQuote.author}",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {
                              add_fevorite_list.add_fevorite(
                                  data: quote.quotes[i]);
                              print("------------------");
                              print("${add_fevorite_list.fevorite_list}");
                              print("------------------");
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                          ),
                          backgroundColor: Color(0xff0E1C26),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
