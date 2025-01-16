// ignore_for_file: prefer_const_constructors, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:stores/Item_template/Product_Card.dart';
import 'package:stores/Item_template/Stroe_Card.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/pages/cart_page.dart';
import 'package:stores/pages/home_page.dart';

int? x;

class StorePage extends StatelessWidget {
  StorePage({
    super.key,
    required this.ListProducts,
    /* required this.ListProducts*/
  });
  List<Productmodel> ListProducts;
  //List<Productmodel> ListProducts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.grey,
        centerTitle:
            true, //or             padding: const EdgeInsets.only(left: 95),

        backgroundColor: Colors.white,
        title: Text(
          'Our Products',
          // or Name store
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),

        actions: [
          IconButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return cart_page(ListProducts_InCart: ListProducts_InCart) ;/////////////
            }, 
          ));
          }, icon: Icon(Icons.shopping_cart_sharp))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 1,
            mainAxisSpacing: 6,
          ),
          itemCount: List1.length,
          itemBuilder: (context, Index) {
            return Product(
              productmodel: ListProducts[Index],
            );
          },
        ),
      ),
    );
  }
}

List<Productmodel> ListProducts_InCart = [];
];