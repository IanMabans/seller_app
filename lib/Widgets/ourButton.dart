import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

Widget ourButton({title, color = purpleColor, onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      primary: color,
      padding:const  EdgeInsets.all(12),
    ),
      onPressed: onPress, child: boldText(text: title, size: 16.0));
}
