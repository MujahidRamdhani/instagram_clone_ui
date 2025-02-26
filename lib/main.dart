import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/Screens/Spalah/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SpalahScreen(),
    );
  }
}
