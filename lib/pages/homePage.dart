import 'package:flutter/material.dart';
import 'package:food_delivery/components/carouselTile.dart';
import 'package:food_delivery/components/categoryTile.dart';
import 'package:food_delivery/components/navBar.dart';
import 'package:food_delivery/components/searchBar.dart';
import 'package:food_delivery/components/titleBar.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:get/get.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  ProductController _productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: TitleBar(),
        preferredSize: Size.fromHeight(60.0),
      ),
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SearchBar(),
              "Our top picks"
                  .text
                  .uppercase
                  .xl4
                  .bold
                  .textStyle(GoogleFonts.varelaRound())
                  .make(),
              HeightBox(10.0),
              Container(
                height: 200.0,
                width: 300.0,
                child: GFCarousel(
                    autoPlay: true,
                    viewportFraction: 1.0,
                    items: List.generate(5, (index) {
                      return CarouselTile(
                        product: _productController.products[index + 2],
                      );
                    })
                    // [
                    //   CarouselTile(
                    //     product: _productController.products.firstWhere(
                    //       (element) {
                    //         return element.name == "Chicken Wings";
                    //       },
                    //     ),
                    //   ),
                    //   CarouselTile(
                    //     product: _productController.products[1],
                    //   ),
                    //   CarouselTile(
                    //     product: _productController.products[2],
                    //   ),
                    // ],
                    ),
              ),
              "Categories"
                  .text
                  .uppercase
                  .xl4
                  .bold
                  .textStyle(GoogleFonts.varelaRound())
                  .make(),
              HeightBox(10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryTile(
                    category: "whole chicken",
                    image:
                        "https://image.freepik.com/free-photo/delicious-chicken-table_144627-8758.jpg",
                  ),
                  CategoryTile(
                    category: "wings",
                    image:
                        "https://image.freepik.com/free-photo/baked-chicken-wings-asian-style_2829-10160.jpg",
                  ),
                ],
              ),
              HeightBox(30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryTile(
                    category: "gizzards",
                    image:
                        "https://image.freepik.com/free-photo/raw-chicken-gizzards-white-bowl_97862-2198.jpg",
                  ),
                  CategoryTile(
                    category: "drumsticks",
                    image:
                        "https://image.freepik.com/free-photo/roasted-chicken-legs-metal-baking-tray-with-potatoes-onion-tomatoes-witn-spices_157296-120.jpg",
                  ),
                ],
              ),
              HeightBox(30.0)
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        currentPage: "HOME",
      ),
    );
  }
}
