import 'package:Supkothar_Somoy/Scen/devp.dart';
import 'package:flutter/material.dart';

import 'About.dart';


class mainDrower extends StatelessWidget {
  const mainDrower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 40),
            width: double.infinity,
            height: 150,
            color: Colors.deepPurple,
            child: const Center(

                child: Text(
              "রূপকথার সময়",
              style: TextStyle(
                  fontFamily: "NotoSansBengali",
                  color: Colors.white,
                  fontSize: 30),
            ))),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Null;
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text(
            "Settings",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Null;
          },
        ),
        ListTile(
          leading: const Icon(Icons.app_blocking_outlined),
          title: const Text(
            "About App",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.push(
              context,MaterialPageRoute(builder: (context) =>  const About(title: "About",)),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.account_circle_sharp),
          title: const Text(
            "About Developer",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.push(
              context,MaterialPageRoute(builder: (context) => const Devp()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text(
            "Log Out",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Null;
          },
        ),
      ]),
    );
  }
}
