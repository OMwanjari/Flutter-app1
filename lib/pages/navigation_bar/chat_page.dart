import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: const Center(
        child: Text(
          "Community Page",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
