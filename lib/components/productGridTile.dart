import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductGridTile extends StatelessWidget {
  ProductGridTile({this.name, this.image});

  String name;
  String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/product/${name}");
      },
      child: Material(
        color: Colors.white,
        elevation: 5.0,
        shape: Vx.rounded,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: ShapeOfView(
                    shape:
                        ArcShape(direction: ArcDirection.Inside, height: 5.0),
                    child: Container(
                      height: 70.0,
                      width: Get.width,
                      child: Image(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(fontSize: 12.0),
                    ).p(10.0),
                  ),
                )
                // .text
                // .sm
                // .bold
                // .uppercase
                // .textStyle(GoogleFonts.roboto())
                // .make()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
