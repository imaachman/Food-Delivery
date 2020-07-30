import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:food_delivery/models/order.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderListTile extends StatelessWidget {
  OrderListTile({this.order});

  Order order;

  ProductController _productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ShapeOfView(
        shape: ArcShape(position: ArcPosition.Right),
        child: Container(
          height: Get.height,
          width: 60.0,
          child: Image(
            image: NetworkImage(order.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: order.name.text.bold.textStyle(GoogleFonts.montserrat()).make(),
      subtitle: Row(
        children: [
          "Total Quantity: ${order.totalQuantity}".text.xs.make(),
          WidthBox(10.0),
          "Total Price: ${order.totalPrice}".text.xs.make(),
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          _productController.removeProductFromCart(order);
        },
      ),
    );
  }
}
