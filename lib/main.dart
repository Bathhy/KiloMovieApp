import 'package:flutter/material.dart';
import 'package:simpleloginbegin/App/Login&SignUp/homepage.dart';
import 'package:simpleloginbegin/App/Login&SignUp/login.dart';
import 'package:simpleloginbegin/botnavi/bookmark.dart';
import 'package:simpleloginbegin/botnavi/searchbut.dart';
import 'package:simpleloginbegin/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/details': (context) => const Login1(),
        '/home': (context) => const Homescreen(),
        '/search': (context) => const Searching(),
        '/Bookmark': (context) => const Mybookmark(),
      },
    );
  }
}
