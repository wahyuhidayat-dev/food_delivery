import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/forgot_password/forgot_password.dart';
import 'package:lk21/utils/const.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

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
                        Text("Enter 4-digit\nVerification code",
                            style: fontDefault.copyWith(
                                fontSize: 25,
                                color: whiteColor,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                            "Code send to +62812000**** .\nThis code will expired in 01:30",
                            style: fontDefault.copyWith(
                                fontSize: 14,
                                color: whiteColor,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
              Form(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50),
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: whiteColor,
                      ),
                      length: 4,
                      obscureText: true,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 4) {
                          return "Input Verification Code";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 50,
                          errorBorderColor: primaryButton,
                          selectedColor: primaryButton,
                          selectedFillColor: primaryButton,
                          inactiveColor: primaryButton,
                          inactiveFillColor: backgroundInputText,
                          activeColor: primaryButton,
                          activeFillColor: primaryButton),
                      cursorColor: whiteColor,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,

                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadows: [
                        const BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        //print("Completed");
                      },
                      onChanged: (value) {
                        //print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        //print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    )),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(const ForgotPasswordScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      primary: primaryButton,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                    ),
                    child: Text("Next",
                        style: fontDefault.copyWith(
                            fontWeight: FontWeight.bold, color: whiteColor))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
