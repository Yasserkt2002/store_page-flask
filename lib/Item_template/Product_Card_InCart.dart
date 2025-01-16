// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/details_product/screens/details_screen.dart';
import 'package:stores/pages/cart_page.dart';
import 'package:stores/pages/store_page.dart';

class Product_inCart extends StatefulWidget {
  const Product_inCart({Key? key, required this.productmodel});
  final Productmodel? productmodel;

  @override
  State<Product_inCart> createState() => _ProductState();
}

class _ProductState extends State<Product_inCart> {
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
                                      widget
                                          .productmodel!.QuantityAddedToCart--;
                                      widget.productmodel!.availableQuantity++;
                                      ListProducts_InCart.remove(
                                          widget.productmodel!);
                                      Navigator.pop(context);
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return cart_page(
                                              ListProducts_InCart:
                                                  ListProducts_InCart);
                                          /////////////
                                        },
                                      ));
                                    });
                                  }, ///////////////////////////////////////
                                  icon: Icon(Icons.remove_shopping_cart),
                                ),
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
