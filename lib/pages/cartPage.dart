import 'package:flutter/material.dart';
import 'package:food_delivery/components/navBar.dart';
import 'package:food_delivery/components/orderListTile.dart';
import 'package:food_delivery/components/titleBar.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  ProductController _productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: TitleBar(), preferredSize: Size.fromHeight(60.0)),
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: Obx(
              () => ListView.builder(
                  itemCount: _productController.orderedItems.length,
                  itemBuilder: (context, index) {
                    return OrderListTile(
                      order: _productController.orderedItems[index],
                    );
                  }),
            )),
            Container(
              height: 200.0,
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(
        currentPage: "CART",
      ),
    );
  }
}
