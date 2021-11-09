import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/upload_photo/display_photo.dart';
import 'package:lk21/utils/const.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  _UploadPhotoScreenState createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
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
                      width: 325,
                      height: 129,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              icgallery,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("From Gallery",
                                style: fontDefault.copyWith(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                InkWell(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundInputText),
                      width: 325,
                      height: 129,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              iccamera,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Take Photo",
                                style: fontDefault.copyWith(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )),
                ),
                const Spacer(),
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
                                builder: (context) => const DisplayPhoto()));
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
