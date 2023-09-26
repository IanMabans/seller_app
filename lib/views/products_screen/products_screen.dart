import 'package:seller_app/Widgets/appBarWidget.dart';
import 'package:seller_app/consts/consts.dart';

import '../../Widgets/text_style.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: red,
          elevation: 2.0,
          child: const Icon(Icons.add)),
      appBar: appBarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              20,
              (index) => Card(
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    imgProduct,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  title: boldText(
                      text: "Product title", color: darkGrey, size: 14.0),
                  subtitle: normalText(
                    text: "\$40.00",
                    color: darkGrey,
                  ),
                  trailing: VxPopupMenu(
                    arrowSize: 0.0,

                      menuBuilder: () => Column(
                            children: List.generate(
                              popupMenuTitles.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Icon(popupMenuIcons[index]),
                                    10.widthBox,
                                    normalText(
                                        text: popupMenuTitles[index],
                                        color: darkGrey),
                                  ],
                                ).onTap(() { }),
                              ),
                            ),
                          ).box.rounded.padding(const EdgeInsets.all(8.0)).width(200).color(white).make(),
                      clickType: VxClickType.singleClick,
                      child: const Icon(Icons.more_vert_rounded)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
