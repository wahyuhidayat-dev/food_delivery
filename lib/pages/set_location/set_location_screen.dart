import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/success/signup_success.dart';
import 'package:lk21/utils/const.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  _SetLocationScreenState createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                        Text("Set Location",
                            style: fontDefault.copyWith(
                                fontSize: 25,
                                color: whiteColor,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                            "This data will be displayed in your account\nprofile for security",
                            style: fontDefault.copyWith(
                                fontSize: 14,
                                color: whiteColor,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: backgroundInputText,
                ),
                height: 150,
                width: 340,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellow),
                              width: 33,
                              height: 33,
                              child: const Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Text(
                            "Your Location",
                            style: fontDefault.copyWith(
                                color: whiteColor, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(const SignUpSuccess());
                        },
                        style: ElevatedButton.styleFrom(
                            primary: hintText,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 110, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text("Set Location",
                            style: fontDefault.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)))
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(const SignUpSuccess());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: primaryButton,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text("Next",
                        style: fontDefault.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
