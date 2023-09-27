import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

Widget chatBubble() {
  return Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(9),
      decoration: const BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      //color: data['uid'] == currentUser!.uid ? Colors.redAccent : Colors.cyan),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          normalText(text: "Text message here", color: fontGrey),
          //"${data['msg']}".text.size(16).white.make(),
          10.heightBox,
          //time.text.color(whiteColor.withOpacity(0.5)).make(),
          normalText(text: "10.30"),
        ],
      ),
    ),
  );
}
