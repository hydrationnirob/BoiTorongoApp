
import 'package:Supkothar_Somoy/Scen/AudioplayBack.dart';
import 'package:Supkothar_Somoy/Scen/HomeSacen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../HomeFont/src/pages/home/home.dart';
import 'DeshBord.dart';
import 'RequestSTf.dart';
import 'package:Supkothar_Somoy/HomeFont/src/pages/home/widget/category.dart';
import 'package:Supkothar_Somoy/HomeFont/src/pages/home/widget/custom_app_bar.dart';
import 'package:Supkothar_Somoy/HomeFont/src/pages/home/widget/movie_header.dart';
import 'package:Supkothar_Somoy/HomeFont/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';




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
      const Home(),
      //const HomeSacen(title: "Home"),
      const Dashbord(),
      const Audioplayback(),
      const RequestPage(),

    ];
}