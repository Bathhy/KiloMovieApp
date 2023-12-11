import 'package:flutter/material.dart';

class Mybookmark extends StatefulWidget {
  const Mybookmark({super.key});

  @override
  State<Mybookmark> createState() => _MybookmarkState();
}

class _MybookmarkState extends State<Mybookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BookMark",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
    );
  }
}
