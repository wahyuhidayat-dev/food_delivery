import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lk21/utils/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        buttonBackgroundColor: primaryButton.withOpacity(0.3),
        color: backgroundInputText,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const Icon(
            Icons.home_rounded,
            color: primaryButton,
            size: 30,
          ),
          const Icon(
            Icons.people_rounded,
            color: primaryButton,
            size: 30,
          ),
          const Icon(
            Icons.shopping_cart_rounded,
            color: primaryButton,
            size: 30,
          ),
          const Icon(
            Icons.chat_bubble_rounded,
            color: primaryButton,
            size: 30,
          ),
        ],
        onTap: (index) {},
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find Your\nFavorite Food",
                    style: fontDefault.copyWith(
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.2)),
                    child: const Icon(
                      Icons.notifications_none_rounded,
                      color: primaryButton,
                      size: 30,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
