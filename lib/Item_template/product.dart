import 'package:flutter/material.dart';
import 'package:stores/Models/product_model.dart';

Color? colorFav = Colors.grey;

class Product extends StatefulWidget {
  const Product({Key? key,required this.productmodel});
  final Productmodel? productmodel;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0), /////////////////
          child: Container(
            //color: const Color.fromARGB(255, 122, 63, 63),
            padding: EdgeInsets.fromLTRB(5, 40, 5, 0),
            height: 190,
            width: 200,
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
                            'name',
                            //  productmodel!.Description!,
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
                                '\'Price\'',
                                //  productmodel!.Price.toString()!,

                                //   '$productmodel.Price',
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
            padding: EdgeInsets.only(left: 21),
            height: 100,
            child:
                Image.asset(widget.productmodel!.Image! /* 'Images/ggg.png'*/),
          ),
        ),
      ],
    );
  }
}

List<Product> ProductsList = [
  Product(
    productmodel: Productmodel(
      id: 1,
      Price: 150,
      title: 'banana',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 2,
      Price: 225,
      title: 'onion',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 3,
      Price: 110,
      title: 'juice',
      Description: 'plaplapla',
      Image: 'Images/fff.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 5,
      Price: 40,
      title: 'lemon',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 6,
      Price: 650,
      title: 'carrot',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 7,
      Price: 500,
      title: 'tomato',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 8,
      Price: 125,
      title: 'meal',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 9,
      Price: 120,
      title: 'milk',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
  Product(
    productmodel: Productmodel(
      id: 10,
      Price: 100,
      title: 'meat',
      Description: 'plaplapla',
      Image: 'Images/ddd.png',
    ),
  ),
];
