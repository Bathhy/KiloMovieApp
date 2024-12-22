import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpleloginbegin/App/Login&SignUp/auth_controller.dart';
import 'package:simpleloginbegin/route/myroute.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _LoginState();
}

class _LoginState extends State<Login1> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final AuthController _control = Get.put(AuthController());
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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        // Wrap the body with SingleChildScrollView
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              icon(),
              Padding(
                padding: const EdgeInsets.only(
                  right: 50,
                  left: 50,
                ),
                child: TextFormField(
                  controller: _emailController,
                  style: const TextStyle(color: Colors.yellow),
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email:',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@gmail.com$')
                        .hasMatch(value)) {
                      return 'Please enter a valid Gmail address';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 50,
                  left: 50,
                ),
                child: TextFormField(
                  controller: _passwordController,
                  style: const TextStyle(color: Colors.yellow),
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password:',
                  ),
                  obscureText: true,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Get.offAllNamed(Myroute.homeroute);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: const Text("Login"),
                ),
              ),
              InkWell(
                onTap: () => _control.loginWithGoogle(),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  child: Text(
                    "Google ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
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
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.person, color: Colors.yellow, size: 100),
      ),
    );
  }
}
