import 'package:seller_app/consts/consts.dart';

class StoreServices {
  static getProfile(uid) {
    return firestore
        .collection(vendorsCollection)
        .where('id', isEqualTo: uid)
        .get();
  }
}
