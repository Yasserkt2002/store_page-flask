// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors, dead_code, unused_import

import 'package:flutter/material.dart';

import 'package:stores/Models/product_model.dart';
import 'package:stores/details_product/screens/details_screen.dart';
import 'package:stores/pages/favorite_page.dart';


import '../main.dart';
import 'Product_Card_InCart.dart';

class Product_inFavorite extends StatefulWidget {
  const Product_inFavorite({Key? key, required this.productmodel});
  final Productmodel? productmodel;

  @override
  State<Product_inFavorite> createState() => ProductState();
}

class ProductState extends State<Product_inFavorite> {
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
                                        ListProducts_InFavorite.remove(
                                            widget.productmodel!);
                                        Navigator.pop(context); //update page{
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return favorite_page(
                                                ListProducts_InFavorite:
                                                    ListProducts_InFavorite);
                                            /////////////
                                            ///
                                          },
                                        )); //update page}
                                        widget.productmodel!.colorFav =
                                            Colors.grey;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: /*  ProductState. */
                                          widget.productmodel!.colorFav,
                                    ))
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
