import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/otp/otpscreen.dart';
import 'package:lk21/utils/const.dart';

class SignUpSuccess extends StatefulWidget {
  const SignUpSuccess({Key? key}) : super(key: key);

  @override
  _SignUpSuccessState createState() => _SignUpSuccessState();
}

class _SignUpSuccessState extends State<SignUpSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(success, fit: BoxFit.cover),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Congrats!",
                style: fontDefault.copyWith(
                    color: primaryButton,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Your profile is ready to use",
                style: fontDefault.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(const OtpScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        primary: primaryButton,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20)),
                    child: Text(
                      "Try Order",
                      style: fontDefault.copyWith(
                          color: whiteColor, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
