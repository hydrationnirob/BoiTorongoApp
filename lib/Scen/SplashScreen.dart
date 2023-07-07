import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../LoginSystem/LoginUi/pages/login_page.dart';
import 'NavButton.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Title of introduction page",
        body: "Welcome to the app! This is a description of how it works.",
        image: const Center(
          child: Icon(Icons.waving_hand, size: 50.0),
        ),
      ),
    ];
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;

  late FirebaseAuth auth;
  User? user;

  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;
    user = auth.currentUser;

    Timer(const Duration(seconds: 2), () {
      setState(() {
        isLoading = true;
      });
      Timer(const Duration(seconds: 2), () {
        if (user != null) {
          Get.offAll(() => const NavButton());
        } else {
          final introScreen = IntroductionScreen(
            pages: widget.getPages(),
            showSkipButton: true,
            showNextButton: false,
            skip: const Text("Skip"),
            done: const Text("Done"),
            onDone: () {
              Get.offAll(() => LoginPage());
            },
          );
          Get.to(() => introScreen);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading)
              SizedBox(
                width: 200,
                height: 200,
                child: Lottie.asset('images/99274-loading.json'),
              )
            else
              Image.asset("images/playstore.png", width: 120, height: 120),
          ],
        ),
      ),
    );
  }
}
