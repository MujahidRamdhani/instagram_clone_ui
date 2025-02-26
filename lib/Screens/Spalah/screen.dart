import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/Screens/Login/loginscreen.dart';
import 'package:instagram_clone_ui/Widgets/uihelper.dart';

class SpalahScreen extends StatefulWidget {
  const SpalahScreen({super.key});

  @override
  State<SpalahScreen> createState() => _SpalahScreenState();
}

class _SpalahScreenState extends State<SpalahScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Uihelper.CustomImage(imgurl: "instagram.png"),
        SizedBox(
          height: 10,
        ),
        Uihelper.CustomImage(imgurl: "logo.png")
      ]),
    ));
  }
}
