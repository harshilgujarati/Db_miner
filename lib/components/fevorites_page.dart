import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:db_miner_app/controllers/fevorite_controller.dart';

class fevorites_page extends StatefulWidget {
  const fevorites_page({super.key});

  @override
  State<fevorites_page> createState() => _fevorites_pageState();
}

class _fevorites_pageState extends State<fevorites_page> {

  fevoriteController fevorite_quotes = Get.find<fevoriteController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child:  ListView.builder(
            itemCount: fevorite_quotes.fevorite_list.fevorite_list.length,
            itemBuilder: (context, i) {
              fevorite_quotes.fevorite_list.fevorite_list;
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/advice.jpeg"),
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
                          "${fevorite_quotes.fevorite_list.fevorite_list[i].quote}",
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
                          "Autor ~ ${fevorite_quotes.fevorite_list.fevorite_list[i].author}",
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
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
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
        ),
      ),
    );
  }
}
