import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:health/pages/navigation_bar/chat_page.dart';
import 'package:health/pages/navigation_bar/location_page.dart';
import 'package:health/pages/navigation_bar/main_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    ChatPage(),
    MainPage(),
    LocationPage(),
  ];

  int currentIndex = 1;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Pink Alert',
          style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                size: 40,
                color: Colors.black,
              )),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          onTap: onTap,
          index: currentIndex,
          color: Colors.deepPurple.shade300,
          backgroundColor: Colors.white,
          items: [
            const Icon(
              Icons.message_rounded,
              color: Colors.white,
              size: 30,
            ),
            const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
            const Icon(
              Icons.location_on,
              color: Colors.white,
              size: 30,
            )
          ]),
    );
  }
}
