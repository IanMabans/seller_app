import 'dart:ffi';

import 'package:get/get.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:seller_app/views/home_screen/home_screen.dart';
import 'package:seller_app/views/orders%20_screen/orders_screen.dart';
import 'package:seller_app/views/profile_screen/profile_screen.dart';

import '../../controllers/home_controller.dart';
import '../products_screen/products_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navScreens = [
      const HomeScreen(),
      const ProductsScreen(),
      const OrdersScreen(),
      const ProfileScreen(),
    ];

    var bottomNavbar = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: dashboard),
      BottomNavigationBarItem(
          icon: Image.asset(icProducts, color: darkGrey, width: 22),
          label: products),
      BottomNavigationBarItem(
          icon: Image.asset(icOrders, color: darkGrey, width: 22),
          label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(icGeneralSettings, color: darkGrey, width: 22),
          label: settings),
    ];

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            onTap: (index) {
              controller.navIndex.value = index;
            },
            currentIndex: controller.navIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: purpleColor,
            unselectedItemColor: darkGrey,
            items: bottomNavbar),
      ),
      body: Obx(
          () => Column(
          children: [
          Expanded(
                child: navScreens.elementAt(controller.navIndex.value),
              ),

          ],
        ),
      ),
    );
  }
}
