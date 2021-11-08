import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/set_location/set_location_screen.dart';
import 'package:lk21/utils/const.dart';

class DisplayPhoto extends StatefulWidget {
  const DisplayPhoto({Key? key}) : super(key: key);

  @override
  _DisplayPhotoState createState() => _DisplayPhotoState();
}

class _DisplayPhotoState extends State<DisplayPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
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
                          Text("Upload Your Photo\nProfile",
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
                InkWell(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundInputText),
                      width: 245,
                      height: 240,
                      child: Center(
                        child: Image.asset(
                          userphoto,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          primary: primaryButton,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SetLocationScreen()));
                      },
                      child: Text(
                        "Next",
                        style: fontDefault.copyWith(
                            fontSize: 16, color: whiteColor),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
