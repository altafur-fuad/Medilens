import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/login_page.dart';

class Logincard extends StatelessWidget {
  const Logincard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => LoginPage()));
      },

      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          height: 50,
          width: 155,
          color: const Color.fromARGB(255, 5, 85, 150),
        ),
      ),
    );
  }
}
