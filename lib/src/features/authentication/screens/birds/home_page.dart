import 'package:flutter/material.dart';

class BirdHomePage extends StatelessWidget{
  const BirdHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text("Home Page"),
      ),
    );
  }
}