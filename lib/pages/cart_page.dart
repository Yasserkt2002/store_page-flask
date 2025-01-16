// ignore_for_file: prefer_const_constructors, unused_import, must_be_immutable, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';

import 'package:stores/Item_template/Product_Card_InCart.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/pages/store_page.dart';

int? x;

class cart_page extends StatefulWidget {
  cart_page({
    super.key,
    required this.ListProducts_InCart,
    /* required this.ListProducts*/
  });
  List<Productmodel> ListProducts_InCart;

  @override
  State<cart_page> createState() => _cart_pageState();
}

class _cart_pageState extends State<cart_page> {
  //List<Productmodel> ListProducts;
  @override
  Widget build(BuildContext context) {
    double TotalPrice = 0;
    for (int i = 0; i < widget.ListProducts_InCart.length; i++) {
      TotalPrice += ListProducts_InCart[i].Price;
    }
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
          itemCount: widget.ListProducts_InCart.length,
          itemBuilder: (context, Index) {
            return Product_inCart(
              productmodel: widget.ListProducts_InCart[Index],
            );
          },
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Container(
          child: Text(
            'Confirm        $TotalPrice${String.fromCharCode(36)}',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white24),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          overlayColor: MaterialStateProperty.all(Colors.green),
        ),
      ),
    );
  }
}
