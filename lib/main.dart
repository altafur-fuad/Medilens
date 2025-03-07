import 'package:flutter/material.dart';
import 'package:medicine_project_practice/pages/welcome_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return welcome_page();
  }
}
