import 'package:seller_app/consts/consts.dart';
import 'package:seller_app/views/messages_screen/components/chat_bubble.dart';

import '../../Widgets/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: boldText(text: chats, size: 16.0, color: purpleColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return chatBubble();
                },
              ),
            ),
            10.heightBox,
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        isDense: true,
                        hintText: "Enter message",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: purpleColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: purpleColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: darkGrey,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
