import 'package:flutter/material.dart';
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
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
