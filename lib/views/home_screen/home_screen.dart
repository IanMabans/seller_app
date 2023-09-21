import 'package:seller_app/Widgets/appBarWidget.dart';
import 'package:seller_app/Widgets/dashboard_button.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(dashboard),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            boldText(text: popular, color: fontGrey, size: 16.0),
            20.heightBox,
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: List.generate(3, (index) => ListTile(
                  onTap: () {

                  },
                  leading: Image.asset(imgProduct,width: 100,height: 100,fit: BoxFit.cover,),
                  title: boldText(text: "Product title", color: darkGrey,size: 14.0),
                  subtitle: normalText(text: "\$40.00",color: darkGrey,),
                )),
              ),
            )

          ],
        ),
      ),
    );
  }
}
