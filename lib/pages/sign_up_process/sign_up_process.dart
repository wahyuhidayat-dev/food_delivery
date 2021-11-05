import 'package:flutter/material.dart';
import 'package:lk21/constants/const.dart';
import 'package:lk21/pages/payment_method_screen/payment_methd_screen.dart';

class SignUpProcess extends StatefulWidget {
  const SignUpProcess({Key? key}) : super(key: key);

  @override
  _SignUpProcessState createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
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
                        onTap: () {},
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
                          Text("Fill in your bio to get\nstarted",
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
                SizedBox(
                  width: 325,
                  height: 57,
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: backgroundInputText,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "First Name",
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
                  height: 57,
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: backgroundInputText,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Last Name",
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
                  height: 57,
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: backgroundInputText,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Phone Number",
                          hintStyle: fontDefault.copyWith(
                              color: hintText,
                              fontWeight: FontWeight.normal,
                              fontSize: 14)),
                      style: fontDefault.copyWith(
                          color: whiteColor, fontWeight: FontWeight.normal)),
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
                                    const PaymentMethodScreen()));
                      },
                      child: Text(
                        "Next",
                        style: fontDefault.copyWith(),
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
