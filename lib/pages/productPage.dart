import 'package:flutter/material.dart';
import 'package:food_delivery/components/addToCart.dart';
import 'package:food_delivery/components/navBar.dart';
import 'package:food_delivery/components/titleBar.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductPage extends StatelessWidget {
  static ProductController _productController = Get.find();
  Product _product = _productController.products
      .firstWhere((element) => element.name == Get.parameters["name"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: TitleBar(), preferredSize: Size.fromHeight(60.0)),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ShapeOfView(
                shape: ArcShape(height: 20.0),
                child: Container(
                  height: 250.0,
                  width: Get.width,
                  child: Image(
                    image: NetworkImage(_product.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _product.name.text
                            .size(24.0)
                            .bold
                            .textStyle(GoogleFonts.montserrat())
                            .make()
                            .box
                            .width(200.0)
                            .make(),
                        WidthBox(60.0),
                        ShapeOfView(
                          elevation: 1.0,
                          shape: ArcShape(height: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              child: "\$${_product.price.toInt()}"
                                  .text
                                  .white
                                  .bold
                                  .xl
                                  .textStyle(GoogleFonts.roboto())
                                  .makeCentered(),
                              color: Colors.lightBlue[400],
                            ),
                          ),
                        )
                      ],
                    ).pOnly(top: 10.0, left: 20.0),
                    HeightBox(10.0),
                    "Category: ${_product.category}"
                        .text
                        .sm
                        .capitalize
                        .make()
                        .pOnly(left: 20.0),
                    _product.description.text.lg
                        .color(Colors.grey[600])
                        .textStyle(GoogleFonts.roboto())
                        .make()
                        .box
                        .make()
                        .p(20.0)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue[400],
        child: Icon(Icons.add_shopping_cart),
        onPressed: () {
          _productController.productQuantity.value = 1;
          _productController.totalPrice.value = _product.price;
          Get.bottomSheet(AddToCart(
            product: _product,
          ));
        },
      ),
    );
  }
}
