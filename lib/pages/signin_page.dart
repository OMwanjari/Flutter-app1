import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/auth_controller.dart';
import 'package:lottie/lottie.dart';
import 'login_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Container(
              height: 0.8 * h,
              width: 0.9 * w,
              decoration: BoxDecoration(
                color: Colors.white,
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
                  Lottie.asset(
                    "assets/animations/signin.json",
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                  ),
                  Container(
                    height: 0.57 * h,
                    width: 0.9 * w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.deepPurple[100],
                    ),
                    alignment: Alignment.center,
                    child: Column(children: [
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        "H e l l o ",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 20.0),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 0.7 * w,
                              child: TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    hintStyle: const TextStyle(fontSize: 20),
                                    prefixIcon: const Icon(
                                      Icons.account_circle,
                                      color: Colors.pink,
                                      size: 20,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hoverColor: const Color.fromARGB(
                                        255, 215, 245, 255),
                                    labelText: "Username",
                                    labelStyle: const TextStyle(fontSize: 20),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Username cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 0.7 * w,
                              child: TextFormField(
                                controller: phoneController,
                                decoration: InputDecoration(
                                    hintText: "Enter Phone no",
                                    hintStyle: const TextStyle(fontSize: 20),
                                    prefixIcon: const Icon(
                                      Icons.phone_android,
                                      color: Colors.pink,
                                      size: 20,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hoverColor: const Color.fromARGB(
                                        255, 215, 245, 255),
                                    labelText: "Phone no",
                                    labelStyle: const TextStyle(fontSize: 20),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Phone cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 0.7 * w,
                              child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Enter Password",
                                      hintStyle: const TextStyle(fontSize: 20),
                                      prefixIcon: const Icon(
                                        Icons.password,
                                        color: Colors.pink,
                                        size: 20,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hoverColor: const Color.fromARGB(
                                          255, 215, 245, 255),
                                      labelText: "Password",
                                      labelStyle: const TextStyle(fontSize: 20),
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
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 0.7 * w,
                              child: TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                      hintText: "Enter Email",
                                      hintStyle: const TextStyle(fontSize: 20),
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.pink,
                                        size: 20,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hoverColor: const Color.fromARGB(
                                          255, 215, 245, 255),
                                      labelText: "Email",
                                      labelStyle: const TextStyle(
                                        fontSize: 20,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email cannot be empty";
                                    }
                                    return null;
                                  }),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () async {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              changeButton = true;
                            });
                            AuthController.instance.register(
                                emailController.text.trim(),
                                passwordController.text.trim());
                            await AuthController.instance.adduserDetail(
                                nameController.text.trim(),
                                phoneController.text.trim(),
                                emailController.text.trim());
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 60 : 180,
                          height: 60,
                          alignment: Alignment.center,
                          // ignore: sort_child_properties_last
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Sign up",
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
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Have an account ?",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            children: [
                              TextSpan(
                                  text: " Login",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => Get.to(() => const LoginPage()))
                            ]),
                      )
                    ]),
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
