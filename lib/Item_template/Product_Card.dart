// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:stores/Models/product_model.dart';

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

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0), /////////////////
          child: Container(
            //color: const Color.fromARGB(255, 122, 63, 63),
            padding: EdgeInsets.fromLTRB(5, 40, 5, 0),
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
                            widget.productmodel!.Description,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // '\'Price\'',
                                widget.productmodel!.Price.toString(),

                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (colorFav == Colors.grey)
                                        colorFav = Colors.red;
                                      else if (colorFav == Colors.red)
                                        colorFav = Colors.grey;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: colorFav,
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
    );
  }
}

List<Productmodel> ProductsList = [
  Productmodel(
    id: 1,
    Price: 150,
    title: 'banana',
    Description: 'plaplapla',
    Image: 'Images/aaa.png',
  ),
  Productmodel(
    id: 2,
    Price: 225,
    title: 'onion',
    Description: 'plaplapla',
    Image: 'Images/bbb.png',
  ),
  Productmodel(
    id: 3,
    Price: 110,
    title: 'juice',
    Description: 'plaplapla',
    Image: 'Images/ccc.png',
  ),
  Productmodel(
    id: 5,
    Price: 40,
    title: 'lemon',
    Description: 'plaplapla',
    Image: 'Images/ddd.png',
  ),
  Productmodel(
    id: 6,
    Price: 650,
    title: 'carrot',
    Description: 'plaplapla',
    Image: 'Images/eee.png',
  ),
  Productmodel(
    id: 7,
    Price: 500,
    title: 'tomato',
    Description: 'plaplapla',
    Image: 'Images/fff.png',
  ),
  Productmodel(
    id: 8,
    Price: 125,
    title: 'meal',
    Description: 'plate',
    Image: 'Images/ggg.png',
  ),
  Productmodel(
    id: 9,
    Price: 120,
    title: 'milk',
    Description: 'plaplapla',
    Image: 'Images/hhh.png',
  ),
  Productmodel(
    id: 10,
    Price: 100,
    title: 'meat',
    Description: 'plaplapla',
    Image: 'Images/ddd.png',
  ),
];
