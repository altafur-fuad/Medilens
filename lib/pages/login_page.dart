import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/homepage.dart';
import 'package:medicine_project_practice/pages/welcome_page.dart';
import 'package:medicine_project_practice/wigets/logincard_2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => WelcomePage()));
            },
            child: Icon(Icons.arrow_circle_left_outlined, size: 50),
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.teal,
                    width: double.infinity,
                    child: Icon(Icons.person, size: 100.0),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: const Color.fromARGB(255, 22, 62, 102),
                    width: double.infinity,
                  ),
                ),
              ],
            ),
            Logincard2(),
          ],
        ),
      ),
    );
  }
}

//  return InkWell(
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => DetailsPage(data: pokemonMap),
//           ),

// FloatingActionButton(
//                   onPressed: () {
//                     Navigator.of(
//                       context,
//                     ).push(MaterialPageRoute(builder: (context) => HomePage()));
//                   },
//                 ),
