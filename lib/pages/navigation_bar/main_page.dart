import 'package:flutter/material.dart';
import 'package:health/auth_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
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
                    welcome(),
                    const Text("Alert !",
                        style: TextStyle(
                            fontSize: 90, fontWeight: FontWeight.bold)),
                    const Text(
                      "Tap  this  button  in  case  of  any  Emergency",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )),
            // ignore: sized_box_for_whitespace
            Container(
              height: h * 0.42,
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
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade700,
                              offset: const Offset(4, 4),
                              blurRadius: 15,
                              spreadRadius: 1),
                          //light shadow
                          BoxShadow(
                              color: Colors.grey.shade200,
                              offset: const Offset(-4, -4),
                              blurRadius: 15,
                              spreadRadius: 1),
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.red.shade400, Colors.red.shade800],
                            stops: const [0.1, 0.9]),
                      ),
                      child: const Text(
                        "SOS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold),
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

  Text welcome() {
    return const Text(
      "Welcome",
      style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 105, 105, 105)),
    );
  }
}
