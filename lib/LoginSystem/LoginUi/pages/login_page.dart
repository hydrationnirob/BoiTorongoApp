import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../loginControler/AtheControler.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';
import 'Singup_page.dart';


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final EmailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>(); // Add a GlobalKey for the Form

  void signUserIn(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      final userSignInData = {
        'email': EmailController.text.trim(),
        'password': passwordController.text,
      };

      final anthControler =  Get.put(AnthControler());
      anthControler.signIn(userSignInData['email']!, userSignInData['password']!);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Image.asset("images/playstore.png", width: 120, height: 120),
                const SizedBox(height: 50),
                Text(
                  'Welcome back, Login Now',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 25),
                Form(
                  key: formKey, // Assign the GlobalKey to the Form
                  child: Column(
                    children: [
                      MyTextField(
                        controller: EmailController,
                        hintText: 'Enter your Email',
                        obscureText: false,
                      ),
                      const SizedBox(height: 10),
                      MyTextField(
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                MyButton(
                  text: 'Sign In',
                  onTap: () => signUserIn(context),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  const [
                    SquareTile(imagePath: 'lib/LoginSystem/LoginUi/images/google.png'),
                    SizedBox(width: 25),
                    SquareTile(imagePath: 'images/pngtree-facebook-social-media-icon-png-image_6315968.png'),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child:  Singup(),
                            type: PageTransitionType.bottomToTop,
                          ),
                        );
                      },
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
