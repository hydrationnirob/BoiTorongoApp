import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';


import '../storyPages/Dnum1.dart';
import '../storyPages/Dnum2.dart';
import '../storyPages/Dnum3.dart';
import '../storyPages/Lnum1.dart';
import '../storyPages/Lnum2.dart';
import '../storyPages/num1.dart';
import '../storyPages/num2.dart';
import '../storyPages/num3.dart';
import '../storyPages/num4.dart';
import '../storyPages/num5.dart';
import 'mainDrower.dart';

class HomeSacen extends StatelessWidget {
  const HomeSacen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("রূপকথার সময়",style: TextStyle(fontFamily: "NotoSansBengali"),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: const mainDrower(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    'https://i.ytimg.com/vi/LjN5prg3L1o/maxresdefault.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'মজার মজার রূপকথার গল্প',
                    style: TextStyle(
                      fontFamily: "NotoSansBengali Bold",

                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const num1(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/696693703-H-768x525.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const num2(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/norhori-das.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const num3(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/rajar-osukh.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const num4(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/king.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const num5(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/sadhu-baba.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/bafhmama.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/mojahrkhuri.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/qQBF3QK4BpxEzdjna9bT_14_cfdcc4f5e2487c74809920d34c55453d_image.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'ছোটদের শিক্ষামুলক গল্প',
                    style: TextStyle(
                      fontFamily: "NotoSansBengali Bold",

                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const Dnum1(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/story-of-a-hunter-and-rat.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const Dnum2(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/golpo bangla.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,PageTransition(child: const Dnum3(), type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/greedy-farmer.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/maxresdefault.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/maxresdefault (2).jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/maxresdefault (1).jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/fa45b67fc78de78af2d22ad3b3f0bad7.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/download.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Coming Soon!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/biyebari (1).jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigoAccent,
                ),
                child: Image.network(
                  "https://i.ytimg.com/vi/4nM5Fl-vvZY/maxresdefault.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(

              padding: const EdgeInsets.all(8.0),
              child: GridView(
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10, crossAxisSpacing: 10),

                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                children: [
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: (){
                      Navigator.push(
                        context,PageTransition(child: const Lnum1(), type: PageTransitionType.bottomToTop),
                      );
                    },
                    child: Image.asset(
                      "images/2-cracked-pot-story.jpg",
                      fit: BoxFit.cover,

                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: (){
                      Navigator.push(
                        context,PageTransition(child: const Lnum2(), type: PageTransitionType.bottomToTop),
                      );
                    },
                    child: Image.asset(
                      "images/kokodiper-bivishika.jpg",
                      fit: BoxFit.cover,

                    ),
                  ),






                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
