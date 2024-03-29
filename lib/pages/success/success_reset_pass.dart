import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/home/homescreen.dart';
import 'package:lk21/utils/const.dart';

class SuccessResetpassword extends StatefulWidget {
  const SuccessResetpassword({Key? key}) : super(key: key);

  @override
  _SuccessResetpasswordState createState() => _SuccessResetpasswordState();
}

class _SuccessResetpasswordState extends State<SuccessResetpassword> {
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
                "Success reset password",
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
                      Get.to(const HomeScreen());
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
