import 'package:flutter/material.dart';
import 'package:food_delivery/components/categoryTile.dart';
import 'package:food_delivery/components/navBar.dart';
import 'package:food_delivery/components/productGridTile.dart';
import 'package:food_delivery/components/titleBar.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  ProductController _productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: TitleBar(),
      ),
      body: Container(
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                  _productController.products
                      .where((element) =>
                          element.category == Get.parameters['category'])
                      .length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ProductGridTile(
                      name: _productController.products
                          .where((element) =>
                              element.category == Get.parameters['category'])
                          .toList()[index]
                          .name,
                      image: _productController.products
                          .where((element) =>
                              element.category == Get.parameters['category'])
                          .toList()[index]
                          .image),
                );
              }))),
      bottomNavigationBar: NavBar(
        currentPage: "HOME",
      ),
    );
  }
}
