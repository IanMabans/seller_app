import 'package:seller_app/Widgets/text_style.dart';
import 'package:seller_app/consts/consts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText(text: "Product Title", color: fontGrey, size: 16.0),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxSwiper.builder(
                autoPlay: true,
                height: 350,
                itemCount: 3,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imgProduct,
                    // data["p_imgs"][index],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                },
              ),
              10.heightBox,
              boldText(text: "Product Title", color: fontGrey, size: 16.0),
              10.heightBox,
              VxRating(
                // value: double.parse(data['p_rating']),
                value: 3.0,
                isSelectable: false,
                onRatingUpdate: (value) {},
                normalColor: textfieldGrey,
                selectionColor: golden,
                count: 5,
                size: 25,
                maxRating: 5,
              ),
              10.heightBox,
              boldText(text: "\$300 ", color: red, size: 18.0),
              10.heightBox,
              // Color Section
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Color:".text.color(fontGrey).make(),
                      ),
                      Row(
                        children: List.generate(
                          3,
                          (index) => Stack(
                            alignment: Alignment.center,
                            children: [
                              VxBox()
                                  .size(40, 40)
                                  .color(Vx.randomPrimaryColor
                                      // Color(data['p_colors'][index])
                                      .withOpacity(1.0))
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                  .roundedFull
                                  .make()
                                  .onTap(() {}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ).box.padding(const EdgeInsets.all(8)).make(),
                  // Quantity row
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Quantity:".text.color(fontGrey).make(),
                      ),
                      normalText(text: "20 Items", color: fontGrey)
                    ],
                  ).box.padding(const EdgeInsets.all(8)).make(),
                ],
              ).box.white.make(),
              const Divider(
                color: Colors.transparent,
              ),
              10.heightBox,
              boldText(text: "Description", color: fontGrey),
              10.heightBox,
              normalText(text: "Description of this item", color: fontGrey)
            ],
          ),
        ),
      ),
    );
  }
}
