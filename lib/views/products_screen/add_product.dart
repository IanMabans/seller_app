import 'package:seller_app/Widgets/custom_textfield.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';
import 'package:seller_app/views/products_screen/components/product_dropdown.dart';
import 'package:seller_app/views/products_screen/components/product_images.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: boldText(text: "Add Product", size: 16.0, color: fontGrey),
        actions: [
          TextButton(
            onPressed: () {},
            child: boldText(text: "Save", color: purpleColor),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              customTextField(
                hint: "eg BMW",
                label: "Product name",
              ),
              10.heightBox,
              customTextField(
                hint: "eg Nice Product",
                label: "Description",
              ),
              10.heightBox,
              customTextField(
                hint: "eg \$100",
                label: "Price",
              ),
              10.heightBox,
              customTextField(
                hint: "eg Nice Product",
                label: "Description",
              ),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              const Divider(),
              boldText(text: "Choose Product image"),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    3, (index) => productImages(label: "${index + 1}")),
              ),
              5.heightBox,
              boldText(text: "First image will be displayed"),
              10.heightBox,
              const Divider(),
              boldText(text: "Choose Product color"),
              10.heightBox,
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: List.generate(
                    8,
                    (index) => Stack(
                      alignment: Alignment.center,
                      children: [
                         VxBox()
                    .color(Vx.randomPrimaryColor)
                    .roundedFull
                    .size(69, 69)
                    .make(),
                        const Icon(Icons.done, color: white,)
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
