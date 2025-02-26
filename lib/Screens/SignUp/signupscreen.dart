import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/Screens/Login/loginscreen.dart';

import 'package:instagram_clone_ui/Widgets/uihelper.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  void _signUp() {
    // Tambahkan logika sign-up di sini
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgurl: "logo.png"),
            const SizedBox(height: 10),
            Uihelper.CustomTextField(
              controller: emailController,
              text: "Email",
              tohide: false,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            Uihelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              tohide: true,
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 10),
            Uihelper.CustomTextField(
              controller: usernameController,
              text: "Username",
              tohide: false,
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 30),
            Uihelper.CustomButton(callback: _signUp, buttonname: "Sign Up"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                Uihelper.CustomTextButton(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  text: "Sign in.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
