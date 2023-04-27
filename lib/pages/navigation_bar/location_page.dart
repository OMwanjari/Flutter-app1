import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

BoxDecoration butDecoration = BoxDecoration(
  color: Colors.grey[500],
  borderRadius: BorderRadius.circular(30),
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
      colors: [Colors.pink.shade300, Colors.pink.shade100],
      stops: const [0.1, 0.9]),
);

// ignore: non_constant_identifier_names
BoxDecoration NearDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(30),
);

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 60),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Emergency',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 60),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Call Services',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 105, 105, 105)),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: h * 0.08,
                width: w * 0.8,
                alignment: Alignment.centerLeft,
                decoration: butDecoration.copyWith(
                    gradient: const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                )),
                child: const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Police",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: h * 0.08,
                width: w * 0.8,
                alignment: Alignment.centerLeft,
                decoration: butDecoration,
                child: const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Women Helpline",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: h * 0.08,
                width: w * 0.8,
                alignment: Alignment.centerLeft,
                decoration: butDecoration.copyWith(
                    gradient: LinearGradient(
                  colors: [Colors.blue.shade300, Colors.blue.shade100],
                )),
                child: const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Student/Child Helpline",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: h * 0.08,
                width: w * 0.8,
                alignment: Alignment.centerLeft,
                decoration: butDecoration.copyWith(
                    gradient: LinearGradient(
                  colors: [Colors.brown.shade200, Colors.brown.shade100],
                )),
                child: const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Senior Citizens Helpline",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 60),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'NearBy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 60),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Services',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 105, 105, 105)),
                  ),
                ),
              ],
            ),
            //nearby services 1st row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.centerLeft,
                        decoration: NearDecoration,
                        child: const Image(
                          image: AssetImage("assets/images/police.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Police Station",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.centerLeft,
                        decoration: NearDecoration,
                        child: const Image(
                          image: AssetImage("assets/images/hospital.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Hospital",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.centerLeft,
                        decoration: NearDecoration,
                        child: const Image(
                          image: AssetImage("assets/images/fire.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Fire Station",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
            // 2nd row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.centerLeft,
                        decoration: NearDecoration,
                        child: const Image(
                          image: AssetImage("assets/images/medical.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Medical Shop",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.centerLeft,
                        decoration: NearDecoration,
                        child: const Image(
                          image: AssetImage("assets/images/hotel.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Hotel",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.centerLeft,
                        decoration: NearDecoration,
                        child: const Image(
                          image: AssetImage("assets/images/fuel.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Fuel Pump",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
