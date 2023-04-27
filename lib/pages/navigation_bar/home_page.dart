import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:health/pages/navigation_bar/chat_page.dart';
import 'package:health/pages/navigation_bar/location_page.dart';
import 'package:health/pages/navigation_bar/main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const ChatPage(),
    const MainPage(),
    const LocationPage(),
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
          backgroundColor: Colors.deepPurple[100],
          centerTitle: true,
          title: const Text(
            'Kawach',
            style: TextStyle(
                color: Color.fromARGB(255, 149, 117, 205),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        bottomNavigationBar: CurvedNavigationBar(
            onTap: onTap, //icon of community page
            index: currentIndex,
            color: Colors.deepPurple.shade400,
            backgroundColor: Colors.deepPurple.shade100,
            items: [
              nav(),
              const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              const Icon(
                Icons.call,
                color: Colors.white,
                size: 30,
              )
            ]),
        drawer: Drawer(
            surfaceTintColor: Colors.deepPurple.shade700,
            backgroundColor: Colors.deepPurple.shade200,
            shadowColor: Colors.yellow,
            child: ListView(
              children: [
                Column(children: [
                  Container(
                    color: Colors.green,
                    child: DrawerHeader(
                        child: Center(
                      child: Column(children: const [
                        Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                        Icon(
                          Icons.face,
                          size: 60,
                        ),
                        Text("User"),
                      ]),
                    )),
                  ),
                ]),
                Center(
                  child: ListTile(
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    leading: const Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: const Text('Logout', style: TextStyle(fontSize: 20)),
                    onTap: () {
                      // Handle logout logic here
                      //AuthController.instance.logOut();
                    },
                  ),
                )
              ],
            )));
  }

  Icon nav() {
    //icon of community page
    return const Icon(
      Icons.message_rounded,
      color: Colors.white,
      size: 30,
    );
  }
}
