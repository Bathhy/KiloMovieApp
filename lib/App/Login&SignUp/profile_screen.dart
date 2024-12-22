import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:simpleloginbegin/App/Login&SignUp/auth_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthController _authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              child: Obx(
                () => Image.network(
                  _authController.profileImage.value,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Obx(
              () => Text(
                _authController.userName.value,
                style: TextStyle(color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () => _authController.logOut(),
              child: Center(
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Text(
                    "Log Out ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
