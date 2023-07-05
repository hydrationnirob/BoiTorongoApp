import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../Scen/NavButton.dart';
import '../../loginControler/AtheControler.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';
import 'login_page.dart';

class Singup extends StatelessWidget {
  Singup({Key? key}) : super(key: key);

  // text editing controllers
  final EmailController = TextEditingController();
  final passwordController = TextEditingController();
  final NameCrontroler= TextEditingController();

  // sign user in method
  void signUpUser(BuildContext context) {
    AnthControler anthControler = Get.put(AnthControler());
    Map<String, String> userSingUpData = {
      'username': NameCrontroler.text.trim(),
      'email': EmailController.text.trim(),
      'password': passwordController.text,
    };
    anthControler.signUp(
      userSingUpData['email']!,
      userSingUpData['password']!,
      userSingUpData['username']!,

    );
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const NavButton()));
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
                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: NameCrontroler,
                  hintText: 'Enter Your Name',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                MyTextField(
                  controller: EmailController,
                  hintText: 'Enter Your Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(

                  controller: passwordController,
                  hintText: 'Password [6-20 characters]',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  text: 'Sign Up',
                  onTap: () => signUpUser(context), // Wrap signUpUser with a lambda function
                ),

                const SizedBox(height: 50),

                // or continue with
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

                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //google button
                    SquareTile(imagePath: 'lib/LoginSystem/LoginUi/images/google.png'),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'lib/LoginSystem/LoginUi/images/apple.png')
                  ],
                ),

                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an Account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          PageTransition(
                            child: LoginPage(),
                            type: PageTransitionType.bottomToTop,
                          ),
                        );
                      },
                      child: const Text(
                        'Login now',
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
