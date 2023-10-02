import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ProfileController extends GetxController {
  var snapshotDate;
  var profileImgpath = ''.obs;
  var profileImageLink = '';
  var isLoading = false.obs;

  //text-fields
  var nameController = TextEditingController();
  var oldPassController = TextEditingController();
  var newPassController = TextEditingController();

  changeImage(context) async {
    try {
      final XFile? img = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (img == null) return;
      profileImgpath.value = img.path;
    } on PlatformException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  //image upload
  uploadProfileImage() async {
    var fileName = basename(profileImgpath.value);
    var destination = 'images/${currentUser!.uid}/$fileName';
    Reference ref = FirebaseStorage.instance.ref().child(destination);
    await ref.putFile(File(profileImgpath.value));
    profileImageLink = await ref.getDownloadURL();
  }

  uploadProfile({name, password, imgUrl}) async {
    var store = firestore.collection(vendorsCollection).doc(currentUser!.uid);
    await store.set(
      {
        'name': name,
        'password': password,
        'imageUrl': imgUrl,
      },
      SetOptions(merge: true),
    );
    isLoading(false);
  }

  changeAuthPassword({email, password, newpassword}) async {
    final cred = EmailAuthProvider.credential(email: email, password: password);
    await currentUser!
        .reauthenticateWithCredential(cred)
        .then((value) => currentUser!.updatePassword(newPassController.text))
        .catchError((error) {
      print(error.toString());
    });
  }
}