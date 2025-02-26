import 'package:flutter/material.dart';

class Uihelper {
  // static CustomTextField({
  //   required TextEditingController controller, required String text, required bool tohide, required TextInputType textInputType,
  //   }),

  static CustomTextButton(
      {required String text, required VoidCallback callback}) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(text,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0XFF3797EF),
          )),
    );
  }

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
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
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
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFF3797EF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        child: Center(
          child: Text(
            buttonname,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
