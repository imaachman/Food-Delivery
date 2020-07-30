import 'package:flutter/material.dart';
import 'package:food_delivery/pages/allProductsPage.dart';
import 'package:food_delivery/pages/cartPage.dart';
import 'package:food_delivery/pages/categoryPage.dart';
import 'package:food_delivery/pages/homePage.dart';
import 'package:food_delivery/pages/productPage.dart';
import 'package:food_delivery/pages/settingsPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/allProducts", page: () => AllProductsPage()),
        GetPage(name: "/cart", page: () => CartPage()),
        GetPage(name: "/settings", page: () => SettingsPage()),
        GetPage(name: "/products/:category", page: () => CategoryPage()),
        GetPage(name: "/product/:name", page: () => ProductPage()),
      ],
    );
  }
}
