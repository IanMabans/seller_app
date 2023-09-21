import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:intl/intl.dart' as intl;

AppBar appBarWidget(title) {
  return AppBar(
      automaticallyImplyLeading: false,
      title: boldText(text: title, size: 16.0, color: fontGrey),
      actions: [
        Center(
            child: normalText(
                text: intl.DateFormat('EEE, MMM d, ' 'yyyy')
                    .format(DateTime.now()),
                color: purpleColor)),
        10.widthBox,
      ]);
}
