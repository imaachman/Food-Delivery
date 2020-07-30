import 'package:flutter/material.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({this.category, this.image});
  String category;
  String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/products/${category}");
        print(Get.parameters['category']);
      },
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            height: 150.0,
            width: 150.0,
            color: Colors.white,
            child: Column(
              children: [
                ShapeOfView(
                  shape: ArcShape(direction: ArcDirection.Inside, height: 5.0),
                  child: Container(
                    height: 120.0,
                    width: 150.0,
                    child: Image(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                HeightBox(5.0),
                category
                    .toUpperCase()
                    .text
                    .lg
                    .bold
                    .textStyle(GoogleFonts.montserrat())
                    .make(),
              ],
            ),
          ),
        ),
        elevation: 5.0,
        shape: Vx.rounded,
      ),
    );
  }
}
