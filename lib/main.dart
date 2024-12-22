import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpleloginbegin/App/Login&SignUp/homepage.dart';
import 'package:simpleloginbegin/App/Login&SignUp/login.dart';
import 'package:simpleloginbegin/App/NetworkConfig/Network_Config_Constant.dart';
import 'package:simpleloginbegin/botnavi/bookmark.dart';
import 'package:simpleloginbegin/botnavi/searchbut.dart';
import 'package:simpleloginbegin/detailscreen/detailavenger.dart';
import 'package:simpleloginbegin/route/myroute.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: NetworkConfigConstant.baseurl,
    anonKey: NetworkConfigConstant.anonKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Myroute.homeroute,
        getPages: Myroute.routes);
  }
}
