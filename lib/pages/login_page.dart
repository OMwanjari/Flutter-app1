import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/auth_controller.dart';
import 'package:lottie/lottie.dart';

import 'signin_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      //child: SingleChildScrollView(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Container(
              height: 0.7 * h,
              width: 0.9 * w,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 205, 240, 234),
                color: Colors.white,
                //image: DecorationImage(
                //  image: AssetImage("img/bg.jpg"), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ), // BoxShadow
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Form(
                key: _formkey,
                child: Column(children: [
                  Lottie.asset("assets/animations/login.json",
                      width: 320, fit: BoxFit.cover),
                  const Align(
                    alignment: Alignment.bottomCenter,
                  ),
                  Container(
                    height: 0.42 * h,
                    width: 0.9 * w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.deepPurple[100],
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          "Pink Alert",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Women Safety & SOS Alert App",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                          child: Column(
                            children: [
                              Container(
                                child: SizedBox(
                                  width: 0.7 * w,
                                  child: TextFormField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          hintText: "Enter Email",
                                          hintStyle: TextStyle(fontSize: 20),
                                          prefixIcon: const Icon(
                                            Icons.email,
                                            color: Colors.pink,
                                            size: 20,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          labelText: "Email",
                                          labelStyle:
                                              const TextStyle(fontSize: 20),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Email cannot be empty";
                                        }
                                        return null;
                                      }),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                child: SizedBox(
                                  width: 0.7 * w,
                                  child: TextFormField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Enter Password",
                                          hintStyle: TextStyle(fontSize: 20),
                                          prefixIcon: const Icon(
                                            Icons.password,
                                            color: Colors.pinkAccent,
                                            size: 20,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          labelText: "Password",
                                          labelStyle:
                                              const TextStyle(fontSize: 20),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "password cannot be empty";
                                        } else if (value.length < 6) {
                                          return "password must contain 6 letters";
                                        }
                                        return null;
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        InkWell(
                          onTap: () async {
                            if (_formkey.currentState!.validate()) {
                              setState(() {
                                changeButton = true;
                              });

                              //await Future.delayed(const Duration(seconds: 1));
                              AuthController.instance.login(
                                  emailController.text.trim(),
                                  passwordController.text.trim());
                              /*setState(() {
                                changeButton = false;
                              });*/
                            }
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 60 : 210,
                            height: 60,
                            alignment: Alignment.center,
                            // ignore: sort_child_properties_last
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                    ),
                                  ),
                            decoration: BoxDecoration(
                                color: changeButton
                                    ? Colors.green
                                    : Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 30)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Don\'t have an account?",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                children: [
                              TextSpan(
                                  text: " Create",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => Get.to(() => const SigninPage()))
                            ])),
                        // SizedBox(
                        // height: 20,
                        //),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
