import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/Screens/BottomNav/bottomnav.dart';
import 'package:instagram_clone_ui/Screens/SignUp/signupscreen.dart';
import 'package:instagram_clone_ui/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Uihelper.CustomImage(imgurl: "logo.png"),
          SizedBox(
            height: 20,
          ),
          Uihelper.CustomTextField(
            controller: emailController,
            text: "Email",
            tohide: false,
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 15,
          ),
          Uihelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              tohide: true,
              textInputType: TextInputType.visiblePassword),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Uihelper.CustomTextButton(
                  text: "Forgot Password?", callback: () {}),
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          Uihelper.CustomButton(
              callback: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BottomNavScreen()));
              },
              buttonname: "Log in"),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Uihelper.CustomImage(imgurl: "Icon.png"),
            Uihelper.CustomTextButton(
                callback: () {}, text: "Login with Facebook."),
          ]),
          const SizedBox(
            height: 10,
          ),
          Text(
            "OR",
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 0.6)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account? ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 0.6)),
              ),
              Uihelper.CustomTextButton(
                callback: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                text: "Sign up.",
              ),
            ],
          )
        ]),
      ),
    );
  }
}
