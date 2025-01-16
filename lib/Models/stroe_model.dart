
import 'package:stores/Models/product_model.dart';

class StroeModel {
  final String? Name;
  final String? Image;
  final String? Description;
  List<Productmodel> productsList;

  StroeModel({
    required this.Name,
    required this.Image,
    required this.Description,
    required this.productsList,
  });
}
