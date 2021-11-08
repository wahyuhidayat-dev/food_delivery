import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
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
                child:
                    SizedBox(width: 45, height: 45, child: Image.asset(icback)),
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
      ),
    );
  }
}
