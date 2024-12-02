// ignore_for_file: prefer_const_constructors, must_be_immutable, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:stores/Item_template/Stroe_Card.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/Models/stroe_model.dart';
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
              onPressed: () {},
              icon: Icon(
                Icons.search,
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
    title: 'banana',
    Description: 'plaplapla1',
    Image: 'Images/aaa.png',
  ),
  Productmodel(
    id: 2,
    Price: 225,
    title: 'onion',
    Description: 'plaplapla2',
    Image: 'Images/bbb.png',
  ),
  Productmodel(
    id: 3,
    Price: 250,
    title: 'juice',
    Description: 'plaplapla3',
    Image: 'Images/ccc.png',
  ),
  Productmodel(
    id: 5,
    Price: 275,
    title: 'lemon',
    Description: 'plaplapla4',
    Image: 'Images/ddd.png',
  ),
  Productmodel(
    id: 6,
    Price: 300,
    title: 'carrot',
    Description: 'plaplapla5',
    Image: 'Images/eee.png',
  ),
  Productmodel(
    id: 7,
    Price: 325,
    title: 'tomato',
    Description: 'plaplapla6',
    Image: 'Images/fff.png',
  ),
  Productmodel(
    id: 8,
    Price: 350,
    title: 'meal',
    Description: 'plate',
    Image: 'Images/ggg.png',
  ),
  Productmodel(
    id: 9,
    Price: 375,
    title: 'milk',
    Description: 'plaplapla',
    Image: 'Images/hhh.png',
  ),
  Productmodel(
    id: 10,
    Price: 400,
    title: 'meat',
    Description: 'plaplapla',
    Image: 'Images/ddd.png',
  ),
];

/////22222 ///// products of store 1 = List of products ,,, for store 1

List<Productmodel> List2 = [
  Productmodel(
    id: 1,
    Price: 450,
    title: 'banana',
    Description: 'plaplapla',
    Image: 'Images/hhh.png',
  ),
  Productmodel(
    id: 2,
    Price: 225,
    title: 'onion',
    Description: 'plaplapla',
    Image: 'Images/ggg.png',
  ),
  Productmodel(
    id: 3,
    Price: 110,
    title: 'juice',
    Description: 'plaplapla',
    Image: 'Images/fff.png',
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
    Image: 'Images/ddd.png',
  ),
  Productmodel(
    id: 7,
    Price: 500,
    title: 'tomato',
    Description: 'plaplapla',
    Image: 'Images/ccc.png',
  ),
  Productmodel(
    id: 8,
    Price: 125,
    title: 'meal',
    Description: 'plate',
    Image: 'Images/bbb.png',
  ),
  Productmodel(
    id: 9,
    Price: 120,
    title: 'milk',
    Description: 'plaplapla',
    Image: 'Images/aaa.png',
  ),
  Productmodel(
    id: 10,
    Price: 100,
    title: 'meat',
    Description: 'plaplapla',
    Image: 'Images/eee.png',
  ),
];
/////333333
List<Productmodel> List3 = [
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
/////4444
List<Productmodel> List4 = [
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
/////5555
List<Productmodel> List5 = [
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
/////6666
List<Productmodel> List6 = [
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
/////7777
List<Productmodel> List7 = [
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
/////8888
List<Productmodel> List8 = [
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
