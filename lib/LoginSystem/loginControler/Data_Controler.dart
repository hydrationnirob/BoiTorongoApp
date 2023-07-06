import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'AtheControler.dart';

class DataControler extends GetxController {

  final firebaseInstance = FirebaseFirestore.instance;

  AnthControler anthControler = AnthControler();

  Map userProfileData={
    "user_name": "",
    "Email": "",
  };



  @override
  void onReady() {
    super.onReady();
    getUserProfileData();
  }

  Future<void> getUserProfileData() async {
    //print("user id ${anthControler.userId}");
    try {
      var response = await firebaseInstance
          .collection('userList')
          .where('uid', isEqualTo: anthControler.userId)
          .get();
      // response.docs.forEach((result) {
      //   print(result.data());
      // });
      if (response.docs.length > 0) {
        print(anthControler.userId);
        userProfileData['user_name'] = response.docs[0]['username'];
        userProfileData['Email'] = response.docs[0]['email'];
      }
      print(userProfileData);
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print(error);
    }
  }




}