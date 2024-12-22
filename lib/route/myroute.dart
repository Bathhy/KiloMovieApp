import 'package:get/get.dart';
import 'package:simpleloginbegin/App/Login&SignUp/login.dart';
import 'package:simpleloginbegin/App/Login&SignUp/profile_screen.dart';

class Myroute {
  static const String homeroute = "/home";
  static const String profielRoute = "/prof";

  static List<GetPage> routes = [
    //     '/': (context) => const SplashScreen(),
    // '/details': (context) => const Login1(),
    // '/home': (context) => const Homescreen(),
    // '/search': (context) => const Searching(),
    // '/Bookmark': (context) => const Mybookmark(),
    // '/detailAven': (context) => const Detailavenger(),
    GetPage(
      name: homeroute,
      page: () => const Login1(),
    ),
    GetPage(
      name: profielRoute,
      page: () => const ProfileScreen(),
    )
  ];
}
