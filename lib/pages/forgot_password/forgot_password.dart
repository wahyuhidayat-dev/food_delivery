import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/success/success_reset_pass.dart';
import 'package:lk21/utils/const.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      patternSplash,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 40),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                          width: 45, height: 45, child: Image.asset(icback)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Forgot Password?",
                            style: fontDefault.copyWith(
                                fontSize: 25,
                                color: whiteColor,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                            "Select which contact details should we\nuse to reset your password",
                            style: fontDefault.copyWith(
                                fontSize: 14,
                                color: whiteColor,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 345,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: backgroundInputText),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(message1, fit: BoxFit.cover)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Via sms :",
                            style: fontDefault.copyWith(color: whiteColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "***-***-***-890",
                            style: fontDefault.copyWith(color: whiteColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 345,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: backgroundInputText),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(message2, fit: BoxFit.cover)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Via email :",
                            style: fontDefault.copyWith(color: whiteColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "*** @gmail.com",
                            style: fontDefault.copyWith(color: whiteColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const SuccessResetpassword());
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      primary: primaryButton,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Text("Next",
                      style: fontDefault.copyWith(
                          fontWeight: FontWeight.bold, color: whiteColor)))
            ],
          ),
        ),
      ),
    );
  }
}
