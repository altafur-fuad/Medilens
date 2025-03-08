import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 139, 113),
        appBar: AppBar(backgroundColor: Colors.transparent),
        body: InkWell(
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 400),
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
      ),
    );
  }
}
