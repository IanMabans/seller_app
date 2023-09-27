import 'package:flutter/material.dart';
import 'package:seller_app/Widgets/ourButton.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

import 'components/order_place.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a variable and specify its type
    Map<String, dynamic> yourDataVariable = {
      'order_code': '123456',
      'shipping_method': 'Standard Shipping',
      'order_date': '2023-09-27',
      'payment_method': 'Credit Card',
      'order_by_name': 'John Doe',
      'order_by_email': 'john@example.com',
      'order_by_address': '123 Main St',
      'order_by_city': 'City',
      'order_by_state': 'State',
      'order_by_postal_code': '12345',
      'total_amount': 100.0,
      'orders': [
        {'title': 'Product 1'},
        {'title': 'Product 2'},
        {'title': 'Product 3'},
      ],
    };

    return Scaffold(
      appBar: AppBar(
        title: boldText(text: "Order Details", color: fontGrey, size: 16.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(
          color: red,
          onPress: () {},
          title: "Confirm Order",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      boldText(
                        text: "Order Status",
                        color: purpleColor,
                        size: 20.0,
                      ),

                      SwitchListTile(
                        activeColor: green,
                        value: true,
                        onChanged: (value) {},
                        title: boldText(
                          text: "Placed",
                          color: fontGrey,
                        ),
                      ),
                      SwitchListTile(
                        activeColor: green,
                        value: true,
                        onChanged: (value) {},
                        title: boldText(
                          text: "Confirmed",
                          color: fontGrey,
                        ),
                      ),
                      SwitchListTile(
                        activeColor: green,
                        value: true,
                        onChanged: (value) {},
                        title: boldText(
                          text: "on Delivery",
                          color: fontGrey,
                        ),
                      ),
                      SwitchListTile(
                        activeColor: green,
                        value: true,
                        onChanged: (value) {},
                        title: boldText(
                          text: "Delivered",
                          color: fontGrey,
                        ),
                      ),
                    ],
                  )
                      .box
                      .outerShadowMd
                      .white
                      .border(color: lightGrey)
                      .roundedSM
                      .make(),
                  orderPlaceDetails(
                    data: yourDataVariable,
                    title1: "Order Code",
                    title2: "Shipping Method",
                    d1: yourDataVariable['order_code'],
                    d2: yourDataVariable['shipping_method'],
                  ),
                  orderPlaceDetails(
                    data: yourDataVariable,
                    title1: "Order Date",
                    title2: "Payment Method",
                    d1: yourDataVariable['order_date'],
                    d2: yourDataVariable['payment_method'],
                  ),
                  orderPlaceDetails(
                    data: yourDataVariable,
                    title1: "Payment Status",
                    title2: "Delivery Status",
                    d1: "Unpaid",
                    d2: "Order placed",
                  ),
                ],
              ).box.outerShadowMd.white.make(),
              10.heightBox,
              const Divider(),
              10.heightBox,
              "Ordered Product".text.size(16).color(Colors.pink).makeCentered(),
              10.heightBox,
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                  (yourDataVariable['orders'] as List<dynamic>).length,
                  (index) {
                    return orderPlaceDetails(
                      title1: (yourDataVariable['orders']
                          as List<dynamic>)[index]['title'],
                    );
                  },
                ).toList(),
              ),
            ],
          ).box.padding(const EdgeInsets.all(8.0)).outerShadowMd.white.border(color: lightGrey).roundedSM.make(),
        ),
      ),
    );
  }
}
