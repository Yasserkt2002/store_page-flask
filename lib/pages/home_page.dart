// ignore_for_file: prefer_const_constructors, must_be_immutable, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:stores/Item_template/Stroe_Card.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/Models/stroe_model.dart';
import 'package:stores/pages/favorite_page.dart';
import 'package:stores/pages/store_page.dart';

class home_page extends StatelessWidget {
  home_page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return favorite_page(
                      ListProducts_InFavorite: ListProducts_InFavorite,
                    );
                  },
                ));

                //favorite_page
              },
              icon: Icon(
                Icons.favorite_border,
                size: 28,
              ))
        ],
        shadowColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Stores',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: ListView.builder(
          clipBehavior: Clip.none,
          itemCount: ListStore.length,
          itemBuilder: (context, num) {
            return StroeCard(
              stroeModel: ListStore[num],
            );
          },
        ),
      ),
    );
  }
}

//list of store
List<StroeModel> ListStore = [
  StroeModel(
    Name: 'store 1',
    Image: 'Images/bb.png',
    Description: 'Modern Creative Usful',
    productsList: List1,
  ),
  StroeModel(
    Name: 'store 2',
    Image: 'Images/cc.png',
    Description: 'Unuque Activee Colorful ',
    productsList: List2,
  ),
  StroeModel(
    Name: 'store 3',
    Image: 'Images/dd.png',
    Description: 'Delicious Cheaepr',
    productsList: List3,
  ),
  StroeModel(
    Name: 'store 4',
    Image: 'Images/ee.png',
    Description: 'blablabal',
    productsList: List4,
  ),
  StroeModel(
    Name: 'store 5',
    Image: 'Images/ff.png',
    Description: 'blablabal',
    productsList: List5,
  ),
  StroeModel(
    Name: 'store 6',
    Image: 'Images/gg.png',
    Description: 'blablabal',
    productsList: List6,
  ),
  StroeModel(
    Name: 'store 7',
    Image: 'Images/hh.png',
    Description: 'blablabal',
    productsList: List7,
  ),
  StroeModel(
    Name: 'store 8',
    Image: 'Images/ee.png',
    Description: 'blablabal',
    productsList: List8,
  ),
];

///// products of store 1 = List of products ,,, for store 1
List<Productmodel> List1 = [
  Productmodel(
    id: 1,
    Price: 200,
    IsFavorite: false,
    Name: 'banana',
    Description: 'plaplapla1',
    Image: 'Images/aaa.png',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 2,
    Price: 225,
    Name: 'onion',
    Description: 'plaplapla2',
    Image: 'Images/bbb.png',
    IsFavorite: false,
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 3,
    Price: 250,
    Name: 'juice',
    Description: 'plaplapla3',
    Image: 'Images/ccc.png',
    availableQuantity: 5,
    IsFavorite: false,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 5,
    Price: 275,
    Name: 'lemon',
    Description: 'plaplapla4',
    Image: 'Images/ddd.png',
    IsFavorite: false,
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 6,
    Price: 300,
    Name: 'carrot',
    IsFavorite: false,
    Description: 'plaplapla5',
    Image: 'Images/eee.png',
    QuantityAddedToCart: 0,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 7,
    Price: 325,
    Name: 'tomato',
    IsFavorite: false,
    Description: 'plaplapla6',
    Image: 'Images/fff.png',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 8,
    Price: 350,
    Name: 'meal',
    Description: 'plate',
    Image: 'Images/ggg.png',
    IsFavorite: false,
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 9,
    Price: 375,
    Name: 'milk',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/hhh.png',
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 10,
    Price: 400,
    QuantityAddedToCart: 0,
    Name: 'meat',
    Description: 'plaplapla',
    Image: 'Images/ddd.png',
    IsFavorite: false,
    availableQuantity: 5,
  ),
];

/////22222 ///// products of store 1 = List of products ,,, for store 1

List<Productmodel> List2 = [
  Productmodel(
    id: 1,
    Price: 450,
    Name: 'banana',
    Description: 'plaplapla',
    Image: 'Images/hhh.png',
    IsFavorite: false,
    QuantityAddedToCart: 0,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 2,
    Price: 225,
    Name: 'onion',
    QuantityAddedToCart: 0,
    Description: 'plaplapla',
    IsFavorite: false,
    Image: 'Images/ggg.png',
    availableQuantity: 5,
  ),
  Productmodel(
    id: 3,
    Price: 110,
    Name: 'juice',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/fff.png',
    availableQuantity: 5,
    IsFavorite: false,
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
    QuantityAddedToCart: 0,
    Image: 'Images/ddd.png',
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 7,
    Price: 500,
    Name: 'tomato',
    Description: 'plaplapla',
    Image: 'Images/ccc.png',
    availableQuantity: 5,
    IsFavorite: false,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 8,
    Price: 125,
    Name: 'meal',
    Description: 'plate',
    Image: 'Images/bbb.png',
    availableQuantity: 5,
    IsFavorite: false,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 9,
    Price: 120,
    Name: 'milk',
    Description: 'plaplapla',
    Image: 'Images/aaa.png',
    IsFavorite: false,
    QuantityAddedToCart: 0,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    Description: 'plaplapla',
    IsFavorite: false,
    QuantityAddedToCart: 0,
    Image: 'Images/eee.png',
    availableQuantity: 5,
  ),
];
/////333333
List<Productmodel> List3 = [
  Productmodel(
    id: 1,
    Price: 150,
    IsFavorite: false,
    Name: 'banana',
    Description: 'plaplapla',
    Image: 'Images/aaa.png',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 2,
    Price: 225,
    Name: 'onion',
    IsFavorite: false,
    Description: 'plaplapla',
    Image: 'Images/bbb.png',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 3,
    Price: 110,
    Name: 'juice',
    Description: 'plaplapla',
    IsFavorite: false,
    Image: 'Images/ccc.png',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 5,
    Price: 40,
    Name: 'lemon',
    Description: 'plaplapla',
    Image: 'Images/ddd.png',
    QuantityAddedToCart: 0,
    IsFavorite: false,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 6,
    Price: 650,
    Name: 'carrot',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/eee.png',
    IsFavorite: false,
    availableQuantity: 5,
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
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    Image: 'Images/hhh.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    Description: 'plaplapla',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    Image: 'Images/ddd.png',
    IsFavorite: false,
  ),
];
/////4444
List<Productmodel> List4 = [
  Productmodel(
    id: 1,
    Price: 150,
    Name: 'banana',
    Description: 'plaplapla',
    availableQuantity: 5,
    IsFavorite: false,
    Image: 'Images/aaa.png',
    QuantityAddedToCart: 0,
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
    availableQuantity: 5,
    Description: 'plaplapla',
    Image: 'Images/ccc.png',
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
    QuantityAddedToCart: 0,
    availableQuantity: 5,
    Description: 'plaplapla',
    Image: 'Images/eee.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 7,
    Price: 500,
    availableQuantity: 5,
    Name: 'tomato',
    QuantityAddedToCart: 0,
    Description: 'plaplapla',
    Image: 'Images/fff.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 8,
    Price: 125,
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    Name: 'meal',
    IsFavorite: false,
    Description: 'plate',
    Image: 'Images/ggg.png',
  ),
  Productmodel(
    id: 9,
    Price: 120,
    QuantityAddedToCart: 0,
    Name: 'milk',
    availableQuantity: 5,
    Description: 'plaplapla',
    Image: 'Images/hhh.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    QuantityAddedToCart: 0,
    Description: 'plaplapla',
    availableQuantity: 5,
    Image: 'Images/ddd.png',
    IsFavorite: false,
  ),
];
/////5555
List<Productmodel> List5 = [
  Productmodel(
    id: 1,
    Price: 150,
    Name: 'banana',
    QuantityAddedToCart: 0,
    Description: 'plaplapla',
    availableQuantity: 5,
    IsFavorite: false,
    Image: 'Images/aaa.png',
  ),
  Productmodel(
    id: 2,
    Price: 225,
    Name: 'onion',
    Description: 'plaplapla',
    Image: 'Images/bbb.png',
    QuantityAddedToCart: 0,
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 3,
    Price: 110,
    Name: 'juice',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/ccc.png',
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 5,
    Price: 40,
    Name: 'lemon',
    IsFavorite: false,
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/ddd.png',
    availableQuantity: 5,
  ),
  Productmodel(
    id: 6,
    Price: 650,
    Name: 'carrot',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/eee.png',
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 7,
    Price: 500,
    IsFavorite: false,
    Name: 'tomato',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/fff.png',
    availableQuantity: 5,
  ),
  Productmodel(
    id: 8,
    Price: 125,
    Name: 'meal',
    Description: 'plate',
    Image: 'Images/ggg.png',
    IsFavorite: false,
    availableQuantity: 5,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 9,
    Price: 120,
    Name: 'milk',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/hhh.png',
    IsFavorite: false,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    Description: 'plaplapla',
    Image: 'Images/ddd.png',
    QuantityAddedToCart: 0,
    IsFavorite: false,
    availableQuantity: 5,
  ),
];
/////6666
List<Productmodel> List6 = [
  Productmodel(
    id: 1,
    Price: 150,
    Name: 'banana',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/aaa.png',
    IsFavorite: false,
    availableQuantity: 5,
  ),
  Productmodel(
    id: 2,
    Price: 225,
    Name: 'onion',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/bbb.png',
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 3,
    Price: 110,
    Name: 'juice',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/ccc.png',
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 5,
    Price: 40,
    Name: 'lemon',
    QuantityAddedToCart: 0,
    IsFavorite: false,
    Description: 'plaplapla',
    availableQuantity: 5,
    Image: 'Images/ddd.png',
  ),
  Productmodel(
    id: 6,
    Price: 650,
    Name: 'carrot',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    availableQuantity: 5,
    Image: 'Images/eee.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 7,
    Price: 500,
    Name: 'tomato',
    Description: 'plaplapla',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    Image: 'Images/fff.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 8,
    Price: 125,
    Name: 'meal',
    Description: 'plate',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    IsFavorite: false,
    Image: 'Images/ggg.png',
  ),
  Productmodel(
    id: 9,
    Price: 120,
    Name: 'milk',
    Description: 'plaplapla',
    Image: 'Images/hhh.png',
    QuantityAddedToCart: 0,
    availableQuantity: 5,
    IsFavorite: false,
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    availableQuantity: 5,
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    Image: 'Images/ddd.png',
    IsFavorite: false,
  ),
];
/////7777
List<Productmodel> List7 = [
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
    availableQuantity: 5,
    Description: 'plaplapla',
    IsFavorite: false,
    QuantityAddedToCart: 0,
    Image: 'Images/bbb.png',
  ),
  Productmodel(
    id: 3,
    Price: 110,
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    Name: 'juice',
    Description: 'plaplapla',
    IsFavorite: false,
    Image: 'Images/ccc.png',
  ),
  Productmodel(
    id: 5,
    Price: 40,
    Name: 'lemon',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    availableQuantity: 5,
    Image: 'Images/ddd.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 6,
    Price: 650,
    Name: 'carrot',
    Description: 'plaplapla',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    Image: 'Images/eee.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 7,
    Price: 500,
    Name: 'tomato',
    QuantityAddedToCart: 0,
    Description: 'plaplapla',
    availableQuantity: 5,
    Image: 'Images/fff.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 8,
    Price: 125,
    Name: 'meal',
    availableQuantity: 5,
    Description: 'plate',
    QuantityAddedToCart: 0,
    Image: 'Images/ggg.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 9,
    Price: 120,
    Name: 'milk',
    Description: 'plaplapla',
    availableQuantity: 5,
    Image: 'Images/hhh.png',
    IsFavorite: false,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    Description: 'plaplapla',
    availableQuantity: 5,
    IsFavorite: false,
    QuantityAddedToCart: 0,
    Image: 'Images/ddd.png',
  ),
];
/////8888
List<Productmodel> List8 = [
  Productmodel(
    id: 1,
    Price: 150,
    Name: 'banana',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    availableQuantity: 5,
    Image: 'Images/aaa.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 2,
    Price: 225,
    Name: 'onion',
    Description: 'plaplapla',
    availableQuantity: 5,
    Image: 'Images/bbb.png',
    QuantityAddedToCart: 0,
    IsFavorite: false,
  ),
  Productmodel(
    id: 3,
    Price: 110,
    Name: 'juice',
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    availableQuantity: 5,
    Image: 'Images/ccc.png',
    IsFavorite: false,
  ),
  Productmodel(
    id: 5,
    Price: 40,
    Name: 'lemon',
    Description: 'plaplapla',
    availableQuantity: 5,
    Image: 'Images/ddd.png',
    IsFavorite: false,
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 6,
    Price: 650,
    Name: 'carrot',
    QuantityAddedToCart: 0,
    Description: 'plaplapla',
    availableQuantity: 5,
    IsFavorite: false,
    Image: 'Images/eee.png',
  ),
  Productmodel(
    id: 7,
    Price: 500,
    Name: 'tomato',
    availableQuantity: 5,
    QuantityAddedToCart: 0,
    Description: 'plaplapla',
    IsFavorite: false,
    Image: 'Images/fff.png',
  ),
  Productmodel(
    id: 8,
    Price: 125,
    Name: 'meal',
    availableQuantity: 5,
    IsFavorite: false,
    Description: 'plate',
    Image: 'Images/ggg.png',
    QuantityAddedToCart: 0,
  ),
  Productmodel(
    id: 9,
    Price: 120,
    Name: 'milk',
    availableQuantity: 5,
    Description: 'plaplapla',
    QuantityAddedToCart: 0,
    IsFavorite: false,
    Image: 'Images/hhh.png',
  ),
  Productmodel(
    id: 10,
    Price: 100,
    Name: 'meat',
    Description: 'plaplapla',
    availableQuantity: 5,
    IsFavorite: false,
    Image: 'Images/ddd.png',
    QuantityAddedToCart: 0,
  ),
];
