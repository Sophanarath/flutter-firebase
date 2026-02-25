import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Home"),
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () => FirebaseAuth.instance.signOut(),
        ),
      ],
    ),
    body: const Center(
      child: Text(
        "Welcome! You are logged in.",
        style: TextStyle(fontSize: 18),
      ),
    ),
  );
}
