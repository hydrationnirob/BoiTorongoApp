import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'AtheControler.dart';

class DataControler extends GetxController {
  final firebaseInstance = FirebaseFirestore.instance;
  AnthControler anthControler = Get.put(AnthControler());

  Map<String, String> userProfileData = {
    "user_name": "",
    "Email": "",
  };

  @override
  void onReady() {
    super.onReady();
    getUserProfileData();
  }

  Future<void> getUserProfileData() async {
    try {
      var response = await firebaseInstance
          .collection('userList')
          .where('user_id', isEqualTo: anthControler.userId)
          .get();

      if (response.docs.isNotEmpty) {
        userProfileData['user_name'] = response.docs[0]['username'];
        userProfileData['Email'] = response.docs[0]['email'];
      }

      print(userProfileData);
      print(anthControler.userId);
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print(error);
    }
  }
}
