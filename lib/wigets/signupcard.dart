import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/sign_up_page.dart';

class Signupcard extends StatelessWidget {
  const Signupcard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => SignUpPage()));
      },

      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 155,
          color: const Color.fromARGB(255, 92, 127, 187),
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
