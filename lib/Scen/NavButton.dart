
import 'package:Supkothar_Somoy/Scen/AudioplayBack.dart';
import 'package:Supkothar_Somoy/Scen/HomeSacen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'DeshBord.dart';
import 'RequestSTf.dart';
import 'Search.dart';


class NavButton extends StatefulWidget {
  const NavButton({Key? key}) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    NevController controller = Get.put(NevController());
    return Scaffold(

      bottomNavigationBar: GNav(
        color: Colors.deepPurple,
        backgroundColor: Colors.white,
        activeColor: Colors.amberAccent,

        onTabChange: (value){
          controller.index.value = value;

        },

        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.dashboard,
            text: "Dashboard",
          ),

          GButton(

              icon: Icons.audiotrack, text: "Audio Book"
          ),
          GButton(

            icon: Icons.add_box_rounded,
            text: "Request",
          ),

        ],
      ),
      body: Obx(() {
        return controller.page[controller.index.value];
      }),

    );
  }
}


class NevController extends GetxController
{
    RxInt index = 0.obs;


    var page=[

      const HomeSacen(title: "Home"),
      const Dashbord(),
      const Audioplayback(),
      const RequestPage(),

    ];
}