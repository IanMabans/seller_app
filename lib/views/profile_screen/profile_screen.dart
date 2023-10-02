import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:seller_app/Widgets/loading_indicator.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:seller_app/controllers/auth_controller.dart';
import 'package:seller_app/services/store_services.dart';
import 'package:seller_app/views/auth_screen/login_screen.dart';
import 'package:seller_app/views/messages_screen/messages_screen.dart';
import 'package:seller_app/views/profile_screen/edit_profile_screen.dart';
import 'package:seller_app/views/shop_screen/shop_settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: purpleColor,
        appBar: AppBar(
          title: boldText(text: settings, size: 16.0),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => const EditProfileScreen());
              },
              icon: const Icon(
                Icons.edit,
                color: white,
              ),
            ),
            TextButton(
              onPressed: () async {
                await Get.find<AuthController>().signOutMethod(context);
                Get.offAll(() => const LoginScreen());
              },
              child: normalText(text: logout, size: 14.0),
            ),
          ],
        ),
        body: FutureBuilder(
          future: StoreServices.getProfile(currentUser!.uid),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return loadingIndicator(circleColor: white);
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              // Handle the case when no data is available.
              return const Text("No profile data available.");
            } else {
              var data = snapshot.data!.docs[0];
              return SafeArea(
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(imgProduct)
                          .box
                          .clip(Clip.antiAlias)
                          .make(),
                      title: boldText(text: "${data['vendor_name']}"),
                      subtitle: normalText(text: "${data['email']}"),
                    ),
                    const Divider(),
                    10.heightBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: List.generate(
                          profileButtonsIcons.length,
                          (index) => ListTile(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Get.to(() => const ShopSettings());
                                  break;
                                case 1:
                                  Get.to(() => const MessagesScreen());
                                  break;
                                default:
                              }
                            },
                            leading:
                                Icon(profileButtonsIcons[index], color: white),
                            title: normalText(
                              text: profileButtonsTitles[index],
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ));
  }
}
