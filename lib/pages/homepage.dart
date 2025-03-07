import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/welcome_page.dart';
import 'package:medicine_project_practice/wigets/medinamecard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 183, 197),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => welcome_page()));
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          actions: [Icon(Icons.notifications), Icon(Icons.menu)],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 173, 170, 177),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 25, top: 70),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Medinamecard(text: "generic"),
                          Medinamecard(text: "class"),
                          Medinamecard(text: "Indication"),
                        ],
                      ),
                      Row(
                        children: [
                          Medinamecard(text: "brand"),
                          Medinamecard(text: "my drug"),
                          Medinamecard(text: "others"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(flex: 2, child: Container(width: double.infinity)),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 212, 218, 220),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.account_circle_outlined, size: 45),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.home, size: 45),
                    ),
                    Icon(Icons.bookmark, size: 45),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search, size: 45),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
