import 'package:flutter/material.dart';
import 'package:food_delivery/components/addToCart.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductListTile extends StatelessWidget {
  ProductListTile({this.product});

  Product product;

  ProductController _productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed("/product/${product.name}");
      },
      contentPadding: EdgeInsets.all(10.0),
      leading: ShapeOfView(
        shape: ArcShape(
          position: ArcPosition.Right,
        ),
        child: Container(
          height: Get.height,
          width: 60.0,
          child: Image(
            image: NetworkImage(product.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: product.name.text.bold.textStyle(GoogleFonts.montserrat()).make(),
      subtitle: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "Quantity: ${product.quantity.toInt()}".text.xs.make(),
          "Price: \$${product.price.toInt()}".toString().text.xs.make(),
          "Category: ${product.category}".text.xs.capitalize.make(),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          _productController.productQuantity.value = 1;
          _productController.totalPrice.value = product.price;
          Get.bottomSheet(AddToCart(
            product: product,
          ));
        },
        icon: Icon(
          Icons.add_circle,
          color: Colors.lightBlue[400],
          size: 30.0,
        ),
      ),
    );
  }
}
