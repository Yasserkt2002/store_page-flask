// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Productmodel {
  final int? id;
  final String Name;
  final double Price;
  final String Description;
  final String Image;
  var availableQuantity;
  var QuantityAddedToCart;
  Color? colorFav = Colors.grey;

  Productmodel({
    this.id,
    required this.Name,
    required this.Price,
    required this.Description,
    required this.Image,
    required this.availableQuantity,
    this.QuantityAddedToCart,
  });
}
