import 'package:flutter/material.dart';

class Uihelper {
  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required bool tohide,
      required TextInputType textInputType}) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Color(0XFFFFFFFF)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: controller,
        obscureText: tohide,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0XFFFFFFFF)),
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }
}
