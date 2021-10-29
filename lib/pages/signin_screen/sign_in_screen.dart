import 'package:flutter/material.dart';
import 'package:lk21/constants/const.dart';
import 'package:lk21/pages/signup_screen/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(patternSplash),
                    ),
                    Positioned(
                        top: 50,
                        left: 50,
                        right: 50,
                        child: SizedBox(
                            width: 180, height: 200, child: Image.asset(logo)))
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 325,
                  height: 55,
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: backgroundInputText,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Email",
                          hintStyle: fontDefault.copyWith(
                              color: hintText,
                              fontWeight: FontWeight.normal,
                              fontSize: 14)),
                      style: fontDefault.copyWith(
                          color: whiteColor, fontWeight: FontWeight.normal)),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 325,
                  height: 55,
                  child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          focusColor: primaryButton,
                          filled: true,
                          fillColor: backgroundInputText,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Password",
                          hintStyle: fontDefault.copyWith(
                              color: hintText,
                              fontWeight: FontWeight.normal,
                              fontSize: 14)),
                      style: fontDefault.copyWith(
                          color: whiteColor, fontWeight: FontWeight.normal)),
                ),
                const Divider(
                  height: 20,
                ),
                Text(
                  "Or Continue With",
                  style: fontDefault.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: whiteColor),
                ),
                const Divider(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundInputText,
                        ),
                        height: 55,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              facebooklogo,
                            ),
                            Text(
                              "Facebook",
                              style: fontDefault.copyWith(
                                  color: whiteColor, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundInputText,
                        ),
                        height: 55,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              googlelogo,
                            ),
                            Text(
                              "Google",
                              style: fontDefault.copyWith(
                                  color: whiteColor, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Divider(
                  height: 20,
                ),
                Text(
                  "Forgot Your Password?",
                  style: fontDefault.copyWith(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: primaryButton,
                      fontSize: 12),
                ),
                const Divider(
                  height: 35,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: primaryButton,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20)),
                    child: Text("Login",
                        style: fontDefault.copyWith(
                            color: whiteColor, fontWeight: FontWeight.bold)))
              ],
            )),
      ),
    );
  }
}
