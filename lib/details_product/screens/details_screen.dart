// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:stores/Models/product_model.dart';
import 'package:stores/constants.dart';

import '../models/product.dart';
import '../widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Productmodel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
      ),
      title: Text(
        'Return',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
