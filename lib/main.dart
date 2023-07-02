import 'package:Supkothar_Somoy/Scen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rupkothar Somoy',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: const SplashScreen(),
    );
  }
}
