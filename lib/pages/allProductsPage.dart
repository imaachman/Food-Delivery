import 'package:flutter/material.dart';
import 'package:food_delivery/components/categoryTile.dart';
import 'package:food_delivery/components/navBar.dart';
import 'package:food_delivery/components/productGridTile.dart';
import 'package:food_delivery/components/productListTile.dart';
import 'package:food_delivery/components/titleBar.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:velocity_x/velocity_x.dart';

class AllProductsPage extends StatelessWidget {
  ProductController _productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: TitleBar(),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: _productController.products.length,
              itemBuilder: (context, index) {
                return ProductListTile(
                  product: _productController.products[index],
                );
              })),
      bottomNavigationBar: NavBar(
        currentPage: "ALL_PRODUCTS",
      ),
    );
  }
}
