import 'package:seller_app/Widgets/custom_textfield.dart';
import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: boldText(text: "Add Product", size: 16.0, color: fontGrey),
        actions: [
          TextButton(
            onPressed: () {},
            child: boldText(text: "Save", color: purpleColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextField(
              hint: "eg BMW",
              label: "Product name",

            )
          ],
        ),
      ),
    );
  }
}
