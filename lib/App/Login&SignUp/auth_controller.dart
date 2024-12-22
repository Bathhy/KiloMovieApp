import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:simpleloginbegin/App/NetworkConfig/network_config_constant.dart';
import 'package:simpleloginbegin/route/myroute.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends GetxController {
  @override
  void onInit() {
    getGoogle();
    super.onInit();
  }

  final supabase = Supabase.instance.client;
  var userName = "".obs;
  var profileImage = "".obs;

  void loginWithGoogle() async {
    try {
      if (GetPlatform.isAndroid) {
        await googleSignIn();
      }
      supabase.auth.onAuthStateChange.listen((data) {
        // final session = data.session;

        // if (session != null) {
        //   Get.offAllNamed(Myroute.profielRoute);
        // } else {
        //   log("Login failed: No session found.");
        // }
        final event = data.event;
        if (event == AuthChangeEvent.signedIn) {
          getGoogle();
          Get.offAllNamed(Myroute.profielRoute);
        }
      });
    } catch (e) {
      log("error $e");
    }
  }

  Future<AuthResponse> googleSignIn() async {
    try {
      const webClientId = NetworkConfigConstant.webClientId;
      const androidClientId = NetworkConfigConstant.androidClientId;

      final GoogleSignIn googleSignIn = GoogleSignIn(
        clientId: androidClientId,
        serverClientId: webClientId,
      );

      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) throw 'Google Sign-In canceled by user';

      final googleAuth = await googleUser.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null) throw 'No Access Token found.';
      if (idToken == null) throw 'No ID Token found.';

      return supabase.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );
    } catch (e) {
      log('Google Sign-In Error: $e');
      rethrow;
    }
  }

  void getGoogle() async {
    final user = supabase.auth.currentUser;
    log(">>>>>>>>>>>>>>>>>>>>>User Metadata: ${user?.userMetadata}");
    userName.value = user?.userMetadata?['full_name'] ?? "No Name";
    profileImage.value = user?.userMetadata?['avatar_url'] ?? "Image";
  }

  Future<void> logOut() async {
    try {
      await GoogleSignIn().signOut();
      await supabase.auth.signOut();
      Get.offAllNamed(Myroute.homeroute);
    } catch (e) {
      log("Logout error: $e");
    }
  }
}
