// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/constants.dart';

import '../../models/product.dart';
import 'color_dot.dart';
import 'product_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});

  final Productmodel product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ProdactImage(
                  size: size,
                  image: product.Image,
                ),
              ),

              /*  const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                ),
              ),*/
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.Name,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              Text(
                'الكمية المتوفرة: ${product.availableQuantity}',
                style: const TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'السعر: \$${product.Price}',
                style: const TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.Description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
      ],
    );
  }
}
