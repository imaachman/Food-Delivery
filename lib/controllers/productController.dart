import 'package:food_delivery/models/order.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List products = [
    Product(
        name: "Honey Garlic Chicken Wings",
        quantity: 1,
        price: 11,
        description: "Description of Honey Garlic Chicken Wings",
        category: "wings",
        image:
            "https://i.pinimg.com/originals/67/e9/35/67e935520a888c125e8b23b99f51dff5.jpg"),
    Product(
        name: "Cripy Buffalo Wings",
        quantity: 2,
        price: 45,
        description: "Description of Crispy Buffalo Wings",
        category: "wings",
        image:
            "https://tastesbetterfromscratch.com/wp-content/uploads/2014/09/Baked-Chicken-Wings-3.jpg"),
    Product(
        name: "Chicken Wings",
        quantity: 3,
        price: 21,
        description: "Despription of Chicken Wings",
        category: "wings",
        image:
            "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2019/2/19/1/FN_Air-Fryer-Chicken-Wings-H_s4x3.jpg.rend.hgtvcom.826.620.suffix/1550611553388.jpeg"),
    Product(
        name: "Baked Chicken Wings",
        quantity: 4,
        price: 43,
        description: "Description of Baked Chicken Wings",
        category: "wings",
        image:
            "https://straightandfarro.com/wp-content/uploads/2018/03/crispy-baked-chicken-wings-3_opt.jpg"),
    Product(
        name: "Fried Chicken Wings",
        quantity: 5,
        price: 54,
        description: "Description of Fried Chicken Wings",
        category: "wings",
        image:
            "https://hips.hearstapps.com/vidthumb/images/delish-fried-chicken-wings-seo-1new-1540589238.jpg"),
    Product(
        name: "Southern Fried Chicken Gizzards",
        quantity: 6,
        price: 32,
        description: "Description of Sothern Fried Chicken Gizzards",
        category: "gizzards",
        image:
            "https://i2.wp.com/grandbaby-cakes.com/wp-content/uploads/2018/06/Fried-Chicken-Gizzard-Recipe-2-570x380.jpg"),
    Product(
        name: "Sauted Fried Chicken Gizzards",
        quantity: 7,
        price: 21,
        description: "Description of Sauteen Fried Chicken Gizzards",
        category: "gizzards",
        image:
            "https://www.sandraseasycooking.com/wp-content/uploads/2014/03/Sauteed-Chicken-Gizzards-Recipe.jpg"),
    Product(
        name: "Classic Chicken Gizzards",
        quantity: 8,
        price: 32,
        description: "Description Classic Gizzards",
        category: "gizzards",
        image:
            "https://cdn.momsdish.com/wp-content/uploads/2019/07/Chicken-Gizzards-Recipe-111-scaled.jpg"),
    Product(
        name: "Fried Chicken Gizzards",
        quantity: 9,
        price: 54,
        description: "Description of Fried Chicken Gizzards",
        category: "gizzards",
        image:
            "https://i2.wp.com/grandbaby-cakes.com/wp-content/uploads/2018/06/Fried-Chicken-Gizzard-Recipe-2-570x380.jpg"),
    Product(
        name: "Lemon Garlic Drumchicken",
        quantity: 9,
        price: 54,
        description: "Description of Lemon Garlic Drumchicken",
        category: "drumsticks",
        image:
            "https://media1.popsugar-assets.com/files/thumbor/DVs7n-Cxql253Ox9vmKuaELERww/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2014/04/10/947/n/1922195/ab777e7fdf4138e6_Lemon-Garlic-Chicken-Drumsticks.jpg"),
    Product(
        name: "Oven BBQ Chicken Drumsticks",
        quantity: 9,
        price: 54,
        description: "Description of Oven BBQ Chicken Drumsticks",
        category: "drumsticks",
        image:
            "https://www.simplyrecipes.com/wp-content/uploads/2016/10/2016-10-26-OvenBBQChicken-21.jpg"),
    Product(
        name: "Baked Chicken Drumsticks",
        quantity: 9,
        price: 54,
        description: "Description of Baked Chicken Drumsticks",
        category: "drumsticks",
        image:
            "https://bitesofwellness.com/wp-content/uploads/2019/03/Baked-chicken-Drumsticks-social.jpg"),
    Product(
        name: "Crispy Tandoori Chicken Drumsticks",
        quantity: 9,
        price: 54,
        description: "Description of Crispy Tandoori Chicken Drumsticks",
        category: "drumsticks",
        image:
            "https://previews.123rf.com/images/trexec/trexec1604/trexec160400026/55613064-crispy-tandoori-chicken-drumsticks-with-mango-chutney.jpg"),
    Product(
        name: "Garlic Herb Butter Roast Chicken",
        quantity: 9,
        price: 54,
        description: "Description of Garlic Herb Butter Roast Chicken",
        category: "whole chicken",
        image:
            "https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/desktopimages/2018_herb-butter-roasted-chicken_4338_600x600.jpg?ext=.jpg"),
    Product(
        name: "Juicy Roasted Chicken",
        quantity: 9,
        price: 54,
        description: "Description of Juicy Roasted Chicken",
        category: "whole chicken",
        image:
            "https://www.foodrepublic.com/wp-content/uploads/2013/12/spanishchicken-e1471367863169.jpg"),
    Product(
        name: "Perfect Roast Chicken",
        quantity: 9,
        price: 54,
        description: "Description of Perfect Roast Chicken",
        category: "whole chicken",
        image:
            "https://i.pinimg.com/originals/75/de/12/75de128905f97b5214349d168d28b3b1.jpg"),
    Product(
        name: "Dutch Oven Whole Roast",
        quantity: 9,
        price: 54,
        description: "Description of Dutch Oven Whole Roast",
        category: "whole chicken",
        image:
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dutch-oven-chicken-recipes-creamy-1524146722.jpg"),
  ];

  var orderedItems = [].obs;

  var productQuantity = 1.obs;
  var totalPrice = 0.0.obs;

  void subtractProduct(Product product) {
    productQuantity.value != 1
        ? productQuantity.value = productQuantity.value - 1
        : productQuantity.value = 1;

    totalPrice.value > product.price
        ? totalPrice.value = totalPrice.value - product.price
        : totalPrice.value = product.price;
  }

  void addProduct(Product product) {
    productQuantity.value = productQuantity.value + 1;
    totalPrice.value = totalPrice.value + product.price;
  }

  void addProductToCart(Product product) {
    Order order = Order(
      name: product.name,
      totalQuantity: productQuantity.value,
      totalPrice: totalPrice.value,
      image:
          "https://image.freepik.com/free-photo/delicious-chicken-table_144627-8758.jpg",
    );
    orderedItems.add(order);
  }

  void removeProductFromCart(Order order) {
    orderedItems.remove(order);
  }
}
