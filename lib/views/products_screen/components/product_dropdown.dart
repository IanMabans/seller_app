import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

Widget productDropdown() {
  return DropdownButtonHideUnderline(
    child: DropdownButton<String>(
      hint: normalText(text: "Choose category",color: fontGrey),
      value: null,
      isExpanded: true,
      items: const [],
      onChanged: (value) {},
    ),
  ).box.white.padding(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.make();
}
