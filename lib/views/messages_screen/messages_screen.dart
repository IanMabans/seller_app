import 'package:get/get.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:seller_app/views/messages_screen/chat_screen.dart';

import '../../Widgets/text_style.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: boldText(text: messages, size: 16.0, color: purpleColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              15,
              (index) =>  ListTile(
                onTap: () {
                  Get.to(() => const ChatScreen());

                },
                leading: const CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: purpleColor,
                  ),
                ),
                title: boldText(text: "Username", color: fontGrey),
                subtitle: normalText(text: "last message" , color: fontGrey),
                trailing: normalText(text: "5.55 pm" , color: fontGrey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
