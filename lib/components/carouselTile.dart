import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class CarouselTile extends StatelessWidget {
  CarouselTile({this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/product/${product.name}");
        print(Get.parameters["name"]);
      },
      child: Card(
        shape: Vx.roundedLg,
        elevation: 5.0,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                height: 200.0,
                width: 300.0,
                child: Image(
                  image: NetworkImage(product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                height: 200.0,
                width: 300.0,
                color: Colors.black45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  product.name.text.white.xl3.bold
                      .textStyle(GoogleFonts.montserrat())
                      .make(),
                  HeightBox(10.0),
                  "@ "
                      .richText
                      .color(Colors.lightBlue[400])
                      .bold
                      .xl2
                      .textStyle(GoogleFonts.montserrat())
                      .withTextSpanChildren([
                    "\$${product.price.toInt()} /- only".textSpan.white.make()
                  ]).makeCentered()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
