import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  NavBar({this.currentPage});

  String currentPage;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 65.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: currentPage == "HOME"
                    ? Colors.lightBlue[400]
                    : Colors.grey[600],
              ),
              onPressed: () {
                Get.toNamed("/");
              },
            ),
            IconButton(
              icon: Icon(
                Icons.all_inclusive,
                size: 30.0,
                color: currentPage == "ALL_PRODUCTS"
                    ? Colors.lightBlue[400]
                    : Colors.grey[600],
              ),
              onPressed: () {
                Get.toNamed("/allProducts");
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                  color: currentPage == "CART"
                      ? Colors.lightBlue[400]
                      : Colors.grey[600],
                ),
                onPressed: () {
                  Get.toNamed("/cart");
                }),
            IconButton(
              icon: Icon(
                Icons.settings,
                size: 30.0,
                color: currentPage == "SETTINGS"
                    ? Colors.lightBlue[400]
                    : Colors.grey[600],
              ),
              onPressed: () {
                Get.toNamed("/settings");
              },
            ),
          ],
        ),
      ),
    );
  }
}
