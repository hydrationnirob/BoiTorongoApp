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
          title: "Welcome to the Book Torongo!",
          body: '''"Immerse yourself in a world of literature with over 400+ books anytime, anywhere."''',

          image:  Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Lottie.asset("images/107918-reading-writing-studying-knowledge-books.json"),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB71C1C),
            ),
            imagePadding: EdgeInsets.only(top: 20),
          )
      ),
      PageViewModel(
          title: "LISTEN TO YOUR BOOK",
          body: "Explore 200+ Audio Books Available",

        image:  Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Lottie.asset("images/83451-interactive-animation-music-library-music-menu-buttons.json",height: 180,width: 180,),
          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        )
      ),
      PageViewModel(
          title: "Added new book to your library",
          body: "Discover new books added regularly, keeping your reading experience fresh and exciting",

          image:  Center(
            child: Lottie.asset("images/72170-books.json"),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
            imagePadding: EdgeInsets.only(top: 20),
          )
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
            skipSemantic: "Exit introduction",
            onDone: () {
              Get.offAll(() => LoginPage());
            },
          );
          Get.offAll(() => introScreen);
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
