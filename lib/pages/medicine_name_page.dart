import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/homepage.dart';

class MedicineNamePage extends StatelessWidget {
  const MedicineNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 98, 139, 221),
        appBar: AppBar(
          title: Text("Medicine Name"),
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          children: [
            Container(color: Colors.amber, width: double.infinity, height: 10),
          ],
        ),
      ),
    );
  }
}
