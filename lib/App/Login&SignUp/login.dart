import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:simpleloginbegin/App/Login&SignUp/regester.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _LoginState();
}

class _LoginState extends State<Login1> {
  // int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 110,
            ),
            child: Text(
              "KiloIT Movies",
              style: TextStyle(color: Colors.yellow),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
      body: Column(
        children: [
          icon(),
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
              left: 50,
            ),
            child: TextFormField(
              style: const TextStyle(color: Colors.yellow),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Username:',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
              left: 50,
            ),
            child: TextFormField(
                style: const TextStyle(color: Colors.yellow),
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                  labelText: 'Password:',
                ),
                obscureText: true,
                obscuringCharacter: '*'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/home"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    textStyle: const TextStyle(
                      fontSize: 20,
                    )),
                child: const Text("Login")),
          ),
          Container(),
        ],
      ),
    );
  }

  Widget icon() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 100,
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.yellow, width: 5),
            shape: BoxShape.circle),
        child: const Icon(Icons.person, color: Colors.yellow, size: 100),
      ),
    );
  }
}
