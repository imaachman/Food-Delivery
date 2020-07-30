import 'package:flutter/material.dart';
import 'package:food_delivery/components/productListTile.dart';
import 'package:food_delivery/controllers/productController.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:getflutter/components/search_bar/gf_search_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchBar extends StatelessWidget {
  ProductController _productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GFSearchBar(
      searchList: _productController.products,
      searchQueryBuilder: (query, list) {
        return list
            .where((element) => element.name
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase()))
            .toList();
      },
      overlaySearchListItemBuilder: (item) {
        var _product = _productController.products
            .firstWhere((element) => element.name == item.name);
        return ResponsiveWrapper(
          defaultScaleFactor: 0.9,
          child: ProductListTile(
            product: _product,
          ),
        );
      },
      onItemSelected: (item) {
        print(item);
      },
      searchBoxInputDecoration: InputDecoration(
          hintText: "Search products",
          hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.lightBlue[400],
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey[400], width: 3.0)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey[600], width: 3.0))),
    );

    // return TypeAheadField(
    //   suggestionsCallback: (pattern) {
    //     return _list.where((element) => element.contains(pattern));
    //   },
    //   itemBuilder: (context, itemData) {
    //     return ListTile(
    //       leading: Icon(Icons.shopping_cart),
    //       title: itemData.text.make(),
    //     );
    //   },
    //   onSuggestionSelected: (suggestion) {
    //     print(suggestion);
    //   },
    // );

    // return SearchWidget(
    //   dataList: _list,
    //   queryBuilder: (String query, List list) {
    //     return list
    //         .where((item) => item.toLowerCase().contains(query.toLowerCase()))
    //         .toList();
    //   },
    //   popupListItemBuilder: (item) {
    //     return ListTile(
    //       title: Text(item),
    //     );
    //   },
    //   onItemSelected: (item) => print(item),
    // );
  }
}
