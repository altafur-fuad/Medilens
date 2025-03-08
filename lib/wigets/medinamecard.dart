import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/medicine_name_page.dart';

class Medinamecard extends StatelessWidget {
  final String text;
  const Medinamecard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => MedicineNamePage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, top: 20),
        child: Container(
          alignment: Alignment.center,
          width: 120.0,
          height: 80.0,
          color: const Color.fromARGB(255, 160, 169, 169),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
