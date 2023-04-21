import 'package:flutter/material.dart';
import 'package:health/auth_controller.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.07,
            ),
            Container(
                margin: const EdgeInsets.only(left: 40),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome",
                      style: TextStyle(fontSize: 30),
                    ),
                    const Text("Alert !",
                        style: TextStyle(
                            fontSize: 90, fontWeight: FontWeight.bold)),
                    const Text(
                      "Tap  this  button  in  case  of  any  Emergency",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )),
            Container(
              height: h * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      AuthController.instance.logOut();
                    },
                    child: Container(
                      height: 280,
                      width: 280,
                      alignment: Alignment.center,
                      child: Text(
                        "SOS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade700,
                              offset: Offset(4, 4),
                              blurRadius: 15,
                              spreadRadius: 1),
                          //light shadow
                          BoxShadow(
                              color: Colors.red.shade200,
                              offset: Offset(-4, -4),
                              blurRadius: 15,
                              spreadRadius: 1),
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.red.shade400, Colors.red.shade800],
                            stops: [0.1, 0.9]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
