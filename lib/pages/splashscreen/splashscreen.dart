import 'package:flutter/material.dart';
import 'package:lk21/constants/const.dart';
import 'package:lk21/pages/onboarding_one/onboarding_one_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Onboardingne()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            color: Colors.black,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    patternSplash,
                    fit: BoxFit.cover,
                  )),
              Center(
                  child: SizedBox(
                      width: 190, height: 205, child: Image.asset(logo)))
            ]),
          ),
        ));
  }
}
