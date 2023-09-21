import 'package:seller_app/Widgets/dashboard_button.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: dashboard, size: 16.0, color: darkGrey),
        actions: [
          Center(
              child: normalText(
                  text: intl.DateFormat('EEE, MMM d, ' 'yyyy')
                      .format(DateTime.now()),
                  color: purpleColor)),
          10.widthBox,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               dashboardButton(context, title: products, count: "60",icon: icProducts),
               dashboardButton(context, title: orders, count: "20", icon: icOrders),
             ],
           ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context, title: rating, count: "10",icon: icStar),
                dashboardButton(context, title: totalSales, count: "20",icon: icOrders),
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,

          ],
        ),
      ),
    );
  }
}
