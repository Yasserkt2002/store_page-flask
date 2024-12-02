// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:stores/Item_template/Product_Card.dart';
import 'package:stores/Models/product_model.dart';

int? x;

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_sharp))
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
            itemCount: ProductsList.length,
            itemBuilder: (context, Index) {
              return Product(
                productmodel: ProductsList[Index],
              );
            },
          ),
        ),
      ),
    );
  }
}
