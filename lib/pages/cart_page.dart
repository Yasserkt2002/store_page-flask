// ignore_for_file: prefer_const_constructors, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:stores/Item_template/Product_Card.dart';
import 'package:stores/Item_template/Product_Card_InCart.dart';
import 'package:stores/Item_template/Stroe_Card.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/pages/home_page.dart';

int? x;

class cart_page extends StatelessWidget {
  cart_page({
    
    super.key,
    required this.ListProducts_InCart,
    /* required this.ListProducts*/
  });
  List<Productmodel> ListProducts_InCart;
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
          'My Cart',
          // or Name store
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
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
          itemCount: ListProducts_InCart.length,
          itemBuilder: (context, Index) {
            return Product_inCart(
              productmodel: ListProducts_InCart[Index],
            );
          },
        ),
      ),
    );
  }
}
