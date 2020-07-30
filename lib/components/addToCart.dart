import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/getflutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  AddToCart({this.product});

  Product product;

  ProductController _productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: Get.width,
      color: Colors.white,
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          "Place Your Order"
              .text
              .xl4
              .bold
              .textStyle(GoogleFonts.montserrat())
              .make(),
          HeightBox(30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  _productController.subtractProduct(product);
                },
                icon: Icon(
                  Icons.indeterminate_check_box,
                  size: 40.0,
                ),
              ),
              WidthBox(30.0),
              Obx(
                () => _productController.productQuantity.value.text.xl3.bold
                    .makeCentered()
                    .box
                    .make(),
              ),
              WidthBox(30.0),
              IconButton(
                onPressed: () {
                  _productController.addProduct(product);
                },
                icon: Icon(
                  Icons.add_box,
                  size: 40.0,
                ),
              )
            ],
          ),
          HeightBox(20.0),
          Obx(() => "Price: \$${_productController.totalPrice.value}"
              .text
              .xl2
              .bold
              .make()),
          HeightBox(30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GFButton(
                shape: GFButtonShape.pills,
                size: 50.0,
                child: "Place Order!"
                    .text
                    .lg
                    .bold
                    .textStyle(GoogleFonts.montserrat())
                    .makeCentered(),
                onPressed: () {
                  Get.back();
                  Get.dialog(AlertDialog(
                    title: "Order Placed!".text.make(),
                    content: "Your products will reach you soon.".text.make(),
                    actions: [
                      GFButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Cool!"),
                      )
                    ],
                  ));
                },
              ),
              GFButton(
                shape: GFButtonShape.pills,
                size: 50.0,
                child: "Add To Cart!"
                    .text
                    .lg
                    .bold
                    .textStyle(GoogleFonts.montserrat())
                    .makeCentered(),
                onPressed: () {
                  Get.back();
                  _productController.addProductToCart(product);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
