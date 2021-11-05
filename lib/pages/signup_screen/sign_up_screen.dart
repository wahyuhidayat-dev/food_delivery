import 'package:flutter/material.dart';
import 'package:lk21/constants/const.dart';
import 'package:lk21/pages/sign_up_process/sign_up_process.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isKeepMeSignIn = false;
  bool isSubscribePromo = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return whiteColor;
      }
      return primaryButton;
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                              width: 180,
                              height: 200,
                              child: Image.asset(logo)))
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
                            prefixIcon: const Icon(Icons.people_alt,
                                color: primaryButton),
                            filled: true,
                            fillColor: backgroundInputText,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: "Username",
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
                        decoration: InputDecoration(
                            prefixIcon:
                                const Icon(Icons.email, color: primaryButton),
                            filled: true,
                            fillColor: backgroundInputText,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
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
                            prefixIcon:
                                const Icon(Icons.lock, color: primaryButton),
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: primaryButton,
                            ),
                            focusColor: primaryButton,
                            filled: true,
                            fillColor: backgroundInputText,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          checkColor: whiteColor,
                          value: isKeepMeSignIn,
                          fillColor: MaterialStateProperty.resolveWith(
                              (states) => getColor(states)),
                          onChanged: (bool? value) {
                            setState(() {
                              isKeepMeSignIn = value!;
                            });
                          },
                        ),
                        Text(
                          "Keep Me Signed In",
                          style: fontDefault.copyWith(
                              fontWeight: FontWeight.bold,
                              color: hintText,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          checkColor: whiteColor,
                          value: isSubscribePromo,
                          fillColor: MaterialStateProperty.resolveWith(
                              (states) => getColor(states)),
                          onChanged: (bool? value) {
                            setState(() {
                              isSubscribePromo = value!;
                            });
                          },
                        ),
                        Text(
                          "Email Me About Special Pricing",
                          style: fontDefault.copyWith(
                              fontWeight: FontWeight.bold,
                              color: hintText,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 35,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpProcess()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          primary: primaryButton,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20)),
                      child: Text("Login",
                          style: fontDefault.copyWith(
                              color: whiteColor, fontWeight: FontWeight.bold)))
                ],
              )),
        ),
      ),
    );
  }
}
