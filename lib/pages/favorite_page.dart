// ignore_for_file: prefer_const_constructors, unused_import, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';

import 'package:stores/Item_template/Product_Card_InFavorite.dart';
import 'package:stores/Models/product_model.dart';

int? x;

class favorite_page extends StatelessWidget {
  favorite_page({
    super.key,
    required this.ListProducts_InFavorite,
  });
  List<Productmodel> ListProducts_InFavorite;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height * 0.042;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.grey,
        centerTitle:
            true, //or             padding: const EdgeInsets.only(left: 95),

        backgroundColor: Colors.white,
        title: Text(
          'My Favorite',
          // or Name store
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 5, 0),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: ListProducts_InFavorite.length,
          itemBuilder: (context, Index) {
            return Product_inFavorite(
              productmodel: ListProducts_InFavorite[Index],
            );
          },
        ),
      ),
    );
  }
}

List<Productmodel> ListProducts_InFavorite = [];
