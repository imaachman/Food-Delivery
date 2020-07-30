import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      iconTheme: IconThemeData(color: Colors.grey[600]),
      elevation: 0.0,
      centerTitle: true,
      title: "App"
          .richText
          .color(Colors.lightBlue[400])
          .textStyle(GoogleFonts.varelaRound())
          .bold
          .xl2
          .withTextSpanChildren(
              ["Name".textSpan.color(Colors.grey[600]).make()]).make(),
    );
  }
}
