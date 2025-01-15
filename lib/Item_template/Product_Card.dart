// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/details_product/screens/details_screen.dart';
import 'package:stores/pages/favorite_page.dart';
import 'package:stores/pages/store_page.dart';

Color? colorFav = Colors.grey;

class Product extends StatefulWidget {
  const Product({Key? key, required this.productmodel});
  final Productmodel? productmodel;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final ProductCardHightSize = MediaQuery.of(context).size.height * 0.3;
    final ProductCardWidthSize = MediaQuery.of(context).size.width * 0.49;
    final PhotoProductHightSize = MediaQuery.of(context).size.height * 0.155;
    final PhotoProductWidthSize = MediaQuery.of(context).size.height * 0.18;

    final LeftPaddingProductCard = MediaQuery.of(context).size.width * 0.01;
    final TopPaddingProductCard = MediaQuery.of(context).size.height * 0.042;
    final RightPaddingProductCard = MediaQuery.of(context).size.width * 0.01;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DetailsScreen(product: widget.productmodel!);
          },
        ));
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0), /////////////////
            child: Container(
              //color: const Color.fromARGB(255, 122, 63, 63),
              padding: EdgeInsets.fromLTRB(LeftPaddingProductCard,
                  TopPaddingProductCard, RightPaddingProductCard, 0),
              height: ProductCardHightSize,

              width: ProductCardWidthSize,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 0,
                      offset: Offset(10, 10)),
                ],
              ),
              // color: Colors.yellow,
              child: Row(
                children: [
                  Container(
                    height: 60,
                  ),
                  Container(
                    height: 175,
                    width: 160,
                    child: Card(
                      elevation: 13,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              //'name',
                              widget.productmodel!.Name,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (widget.productmodel!
                                              .availableQuantity! >=
                                          1) {
                                        widget.productmodel!
                                            .QuantityAddedToCart++;
                                        widget
                                            .productmodel!.availableQuantity--;
                                        ListProducts_InCart.add(
                                            widget.productmodel!);
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.add_shopping_cart_outlined),
                                ),
                                InkWell(
                                  onLongPress: () {
                                    setState(() {
                                      if (colorFav == Colors.red)
                                        colorFav = Colors.grey;
                                      widget.productmodel!.IsFavorite = false;
                                      ListProducts_InFavorite.remove(
                                          widget.productmodel!);
                                    });
                                  },
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (colorFav == Colors.grey)
                                            colorFav = Colors.red;
                                          widget.productmodel!.IsFavorite =
                                              true;
                                          ListProducts_InFavorite.add(
                                              widget.productmodel!);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.favorite,
                                        color: widget.productmodel!.IsFavorite
                                            ? Colors.red
                                            : Colors.grey,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 89,
            left: 29,
            child: Container(
              //color: Colors.red,
              padding: EdgeInsets.only(left: 21),
              height: PhotoProductHightSize,
              width: PhotoProductWidthSize,
              child:
                  Image.asset(widget.productmodel!.Image /* 'Images/ggg.png'*/),
            ),
          ),
        ],
      ),
    );
  }
}

List<Productmodel> ProductsList = [
  Productmodel(
    id: 1,
    Price: 150,
    Name: 'banana',
    Description: 'plaplapla',
    Image: 'Images/aaa.png',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    IsFavorite: false,
  ),
  Productmodel(
    id: 2,
    Price: 225,
    Name: 'onion',
    Description: 'plaplapla',
    availableQuantity: 5,
    IsFavorite: false,
    Image: 'Images/bbb.png',
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 3,
    Price: 110,
    Name: 'juice',
    Description: 'plaplapla',
    Image: 'Images/ccc.png',
    availableQuantity: 5,
    IsFavorite: false,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 5,
    Price: 40,
    Name: 'lemon',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/ddd.png',
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 6,
    Price: 650,
    Name: 'carrot',
    Description: 'plaplapla',
    Image: 'Images/eee.png',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    IsFavorite: false,
  ),
  Productmodel(
    id: 7,
    Price: 500,
    Name: 'tomato',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/fff.png',
    IsFavorite: false,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 8,
    Price: 125,
    Name: 'meal',
    Description: 'plate',
    Image: 'Images/ggg.png',
    QuantityAddedToCart: 0,
    IsFavorite: false,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 9,
    Price: 120,
    Name: 'milk',
    Description: 'plaplapla',
    Image: 'Images/hhh.png',
    IsFavorite: false,
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    Description: 'plaplapla',
    Image: 'Images/ddd.png',
    IsFavorite: false,
    QuantityAddedToCart: 0,
    availableQuantity: 5,
  ),
];
