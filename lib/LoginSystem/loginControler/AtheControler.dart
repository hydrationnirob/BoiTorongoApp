import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Scen/NavButton.dart';
import '../LoginUi/components/comman_dailog.dart';
import 'Data_Controler.dart';

class AnthControler extends GetxController {

  final DataControler dataControler = Get.put(DataControler());



  Future<void> signIn(String email, String password) async {
    try {
      CommanDialog.showLoading();

      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      print("The user is ths my ${dataControler.userhasId}");

      CommanDialog.hideLoading();
      Get.offAll(() =>  const NavButton());

    }
    on FirebaseAuthException catch (e) {
      CommanDialog.hideLoading();

      if (e.code == 'user-not-found') {
        CommanDialog.showErrorDialog(
          title: 'User Not Found.',
          description: 'No user found for that email.',
        );
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        CommanDialog.showErrorDialog(
          title: 'Wrong Password.',
          description: 'Wrong password provided for that user.',
        );
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      CommanDialog.hideLoading();
      print(e);
    }
  }

  Future<void> signUp(String email, String password,String username) async {
    try {
      CommanDialog.showLoading();
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      CommanDialog.hideLoading();

       try{
         var responce= await FirebaseFirestore.instance.collection("userList").add({
           "username": username,
           "email": email,
           "password": password,
           "user_id": userCredential.user!.uid,
           "joindate": DateTime.now(),
         });
         CommanDialog.hideLoading();
         Get.back();
         }
       catch(e){
         CommanDialog.hideLoading();
         print(e);
       }




    } on FirebaseAuthException catch (e) {
      CommanDialog.hideLoading();

      if (e.code == 'weak-password') {
        CommanDialog.showErrorDialog(
          title: 'Weak Password.',
          description: 'The password provided is too weak.',
        );
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        CommanDialog.showErrorDialog(
          title: 'Email Already In Use.',
          description: 'The account already exists for that email.',
        );
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
