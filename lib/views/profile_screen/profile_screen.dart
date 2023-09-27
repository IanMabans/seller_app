import 'package:get/get.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';
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
            onPressed: () {},
            child: normalText(text: logout, size: 14.0),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(imgProduct).box.clip(Clip.antiAlias).make(),
            title: boldText(text: "Vendor Name"),
            subtitle: normalText(text: "vendor@gmail.com"),
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
                        leading: Icon(profileButtonsIcons[index], color: white),
                        title: normalText(
                            text: profileButtonsTitles[index], color: white),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
