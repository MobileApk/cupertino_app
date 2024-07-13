import 'package:cupertino_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCupertionApp());
}

class MyCupertionApp extends StatelessWidget {
  const MyCupertionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.purple.shade50,
        barBackgroundColor: Colors.purple,
        primaryColor: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}
