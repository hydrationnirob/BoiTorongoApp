import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quickalert/quickalert.dart';

import '../../../Scen/About.dart';
import '../../loginControler/Data_Controler.dart';
import 'ProfileWgt.dart';
import 'login_page.dart';
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);



  final DataControler dataControler = Get.put(DataControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white,fontSize: 24)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100), child: const Image(image: AssetImage("images/profile.png"))
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                  ' ${dataControler.userProfileData['user_name']}',
                  style: Theme.of(context).textTheme.headlineMedium),
              Text('  ${dataControler.userProfileData['Email']}'
                  , style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),

              /// -- BUTTON
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, side: BorderSide.none, shape: const StadiumBorder()),
                  child: const Text('Upgrade', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              /// -- MENU
              ProfileMenuWidget(title: "Settings", icon: Icons.settings, onPress: () {}),
              ProfileMenuWidget(title: "Billing Details", icon: Icons.wallet, onPress: () {}),
              ProfileMenuWidget(title: "User Management", icon: Icons.manage_accounts, onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: "Information", icon: Icons.info, onPress: () {

                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.info,
                  text: 'About The App And Details',
                  confirmBtnText: 'Show',
                  onConfirmBtnTap: () => Get.off(const About(title: 'Boi Torongo',)),
                );



              }),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: Icons.logout,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    Get.defaultDialog(
                      title: "LOGOUT",
                      titleStyle: const TextStyle(fontSize: 20),
                      content: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("Are you sure, you want to Logout?"),
                      ),
                      confirm: ElevatedButton (
                        onPressed: ()  {

                          QuickAlert.show(
                            context: context,
                            type: QuickAlertType.success,
                            text: 'Transaction Completed Successfully!',
                            confirmBtnText: 'OK',
                            onConfirmBtnTap: () {
                              FirebaseAuth.instance.signOut();
                              Get.offAll( LoginPage());
                            }
                          );



                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, side: BorderSide.none),
                        child: const Text("Yes"),
                      ),
                      cancel: OutlinedButton(onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}