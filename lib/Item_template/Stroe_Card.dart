// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:stores/Models/stroe_model.dart';
import 'package:stores/pages/home_page.dart';
import 'package:stores/pages/store_page.dart';

class StroeCard extends StatelessWidget {
  StroeCard({super.key, required this.stroeModel});
  StroeModel stroeModel;

  @override
  Widget build(BuildContext context) {
    final CardStoreHightSize = MediaQuery.of(context).size.height * 0.16;
    final PhotoWidthSize = MediaQuery.of(context).size.width * 0.3;
    final PhotoHightSize = MediaQuery.of(context).size.height * 0.275;

    return GestureDetector(
      //////////////////////////////////////////////////////////////////
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return StorePage(
              ListProducts: stroeModel.productsList,
            );
          },
        ));
      },

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              //  color: Colors.red,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 0,
                      offset: Offset(10, 10)),
                ],
              ),
              width: double.infinity,
              height: CardStoreHightSize,
              //    color: const Color.fromARGB(255, 86, 19, 42),
              child: Card(
                  //    child: Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5))
                  child: Padding(padding: EdgeInsets.all(44))),
            ),
            Positioned(
              left: 190,
              top: -60,
              child: Container(
                height: PhotoHightSize,
                width: PhotoWidthSize,
                child: Image.asset(stroeModel.Image!),
              ),
            ),
            Positioned(
              left: 22,
              top: 8,
              child: Container(
                // color: Colors.yellow,
                width: 130,
                height: 85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stroeModel.Name!,
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    Container(
                      //color: Colors.red,
                      height: 43,
                      width: 130,
                      child: Text(
                        stroeModel.Description!, ///////////less then 4 word
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
