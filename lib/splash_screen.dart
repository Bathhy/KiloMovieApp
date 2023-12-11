import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:simpleloginbegin/App/Login&SignUp/login.dart';
import 'package:simpleloginbegin/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, '/details'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Image_spotify,
              width: 200,
            ),
            const SizedBox(height: 20),
            // Text("Loading"),
            // SizedBox(height: 16),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
              strokeWidth: 5.5,
            )
          ],
        ),
      ),
    );
  }
}
