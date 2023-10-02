import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:seller_app/consts/consts.dart';

import '../consts/firebase_consts.dart';

class AuthController extends GetxController {
  //textController
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isLoading = RxBool(false);

  //login method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      print('Firebase Auth Error: ${e.message}');
      VxToast.show(context, msg: e.message ?? 'Unknown Error');
    }
    return userCredential;
  }

  //sign up
  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //storing data method
  storeUserData({name, password, email}) async {
    DocumentReference store =
    firestore.collection(vendorsCollection).doc(currentUser!.uid);
    store.set({
      'name': name,
      'password': password,
      'email': email,
      'imageUrl': '',
      'id': currentUser!.uid,
      'cart_count': "00",
      'order_count': "00",
      'wishlist_count': "00",
    });
  }

  //signOut Method
  signOutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}