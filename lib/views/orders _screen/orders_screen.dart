import 'package:seller_app/Widgets/appBarWidget.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:intl/intl.dart' as intl;

import '../../Widgets/text_style.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(orders),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                20,
                (index) => ListTile(
                  tileColor: Colors.white38,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  onTap: () {},
                  // leading: Image.asset(
                  //   imgProduct,
                  //   width: 100,
                  //   height: 100,
                  //   fit: BoxFit.cover,
                  // ),
                  title: boldText(
                      text: "9765467899", color: purpleColor, size: 14.0),
                  subtitle: Column(
                    children: [
                     Row(
                       children: [
                         const Icon(Icons.calendar_month),
                         10.widthBox,
                         normalText(
                           text: intl.DateFormat().add_yMd().format(DateTime.now()),
                           color: fontGrey,

                         ),
                       ],
                     ),
                      Row(
                        children: [
                          const Icon(Icons.payment),
                          10.widthBox,
                          boldText(text: unpaid, color: red)

                        ],
                      )
                    ],
                  ),
                  trailing: boldText(text: "\$40.0", color: purpleColor, size: 16.0),
                ).box.margin(const EdgeInsets.only(bottom: 4)).make(),
              ),
            ),
          )),
    );
  }
}
