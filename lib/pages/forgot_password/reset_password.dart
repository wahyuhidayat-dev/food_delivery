import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/utils/const.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                        Text("Reset your password\nhere",
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
              SizedBox(
                width: 325,
                height: 55,
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.remove_red_eye,
                            color: primaryButton),
                        filled: true,
                        fillColor: backgroundInputText,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "New password",
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
                        prefixIcon: const Icon(Icons.remove_red_eye,
                            color: primaryButton),
                        focusColor: primaryButton,
                        filled: true,
                        fillColor: backgroundInputText,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "Confrim Password",
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
            ],
          ),
        ),
      ),
    );
  }
}
