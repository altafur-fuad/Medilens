import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/homepage.dart';

class Logincard2 extends StatelessWidget {
  const Logincard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 5.0,

      child: Container(
        decoration: BoxDecoration(color: const Color(0xffc1e8ff)),
        height: 320.0,
        width: 320.0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Login",
                style: TextStyle(
                  color: const Color.fromARGB(255, 114, 130, 220),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text("Email", textAlign: TextAlign.start),
            ),
            Container(height: 25.0, width: 200, color: Color(0xff6da5c0)),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text("Password", textAlign: TextAlign.start),
            ),
            Container(height: 25.0, width: 200, color: const Color(0xff6da5c0)),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: 40.0,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xff0f969c),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
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
            Text("Forgot Password?"),
            Text("SignUp!"),
          ],
        ),
      ),
    );
  }
}
