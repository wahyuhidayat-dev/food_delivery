import 'package:flutter/material.dart';
import 'package:lk21/utils/const.dart';
import 'package:lk21/pages/onboarding_two/onboarding_two_screen.dart';

class Onboardingne extends StatefulWidget {
  const Onboardingne({Key? key}) : super(key: key);

  @override
  _OnboardingneState createState() => _OnboardingneState();
}

class _OnboardingneState extends State<Onboardingne> {
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
                    child: Image.asset(illustration1, fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            const Text(
              "Find your  Comfort\nFood here",
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
              "Here You Can find a chef or dish for every\ntaste and color. Enjoy!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'BentoSans',
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboardingtwo()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: primaryButton,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20)),
                  child: Text(
                    "Next",
                    style: fontDefault.copyWith(color: whiteColor),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
