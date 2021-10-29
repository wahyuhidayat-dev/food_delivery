import 'package:flutter/material.dart';
import 'package:lk21/constants/const.dart';
import 'package:lk21/pages/signin_screen/sign_in_screen.dart';

class Onboardingtwo extends StatefulWidget {
  const Onboardingtwo({Key? key}) : super(key: key);

  @override
  _OnboardingtwoState createState() => _OnboardingtwoState();
}

class _OnboardingtwoState extends State<Onboardingtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.asset(illustration2, fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            const Text(
              "Food Ninja is Where Your\nComfort Food Lives",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'BentoSans',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              "Enjoy a fast and smooth food delivery at\nyour doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'BentoSans',
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                },
                style: ElevatedButton.styleFrom(
                    primary: primaryButton,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20)),
                child: Text(
                  "Next",
                  style: fontDefault.copyWith(color: whiteColor),
                ))
          ]),
        ),
      ),
    );
  }
}
