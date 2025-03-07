import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/homepage.dart';
import 'package:medicine_project_practice/pages/welcome_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => welcome_page()));
            },
            child: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 40, 110),
              borderRadius: BorderRadius.circular(30),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Name",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(height: 25.0, width: 200, color: Color(0xff6da5c0)),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Email",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(height: 25.0, width: 200, color: Color(0xff6da5c0)),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Password",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  height: 25.0,
                  width: 200,
                  color: const Color(0xff6da5c0),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 40.0,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff0f969c),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "submit",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Already Have Account?  Login!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
