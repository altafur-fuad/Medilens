import 'package:flutter/material.dart';
import 'package:medicine_project_practice/wigets/logincard.dart';
import 'package:medicine_project_practice/wigets/signupcard.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 139, 113),
        appBar: AppBar(backgroundColor: Colors.transparent),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    child: Text(
                      "Engima Of Medicine",
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 5, 32, 69),
                      borderRadius: BorderRadius.circular(34.0),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Logincard(), Signupcard()],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Positioned(
              top: 150.0,
              child: SizedBox(
                height: 300.0,
                width: 300.0,
                child: Image.asset('assets/logo.PNG', fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
