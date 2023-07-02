import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Devp extends StatelessWidget {
  const Devp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Developers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/DSC05145.JPG'),
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            const Text(
              'Md Rakibbul Haque',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'My name is Rakibull Haque, and I am currently pursuing '
              'a Bachelor of Science degree in Computer Science and Engineering.'
              ' As a Flutter developer,'
              ' I specialize in creating applications '
              'using the Flutter framework.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: Lottie.asset('images/91451-developer-blue.json'),
            )

          ],
        ),
      ),
    );
  }
}
