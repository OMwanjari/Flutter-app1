import 'package:flutter/material.dart';
import 'package:health/auth_controller.dart';

class HomePage extends StatelessWidget {
  String name = "Dr. Ragini sharma", city = "Nagpur";

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        centerTitle: true,
        title: const Text(
          'Pink Alert',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
              )),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AuthController.instance.logOut();
            },
            child: const Text(
              "Log out",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            )),
      ),
    );
  }
}
