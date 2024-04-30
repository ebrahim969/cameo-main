import 'package:tigor_store/core/models/data_model.dart';

class ProductModel extends DataModel {
  final int price;
  final String desc;
  final String productDate;
  final String id;

  ProductModel({
    required this.price,
    required String image,
    required String title,
    required this.desc,
    required this.productDate,
    required this.id
  }) : super(image: image, title: title);

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      title: jsonData['title'],
      image: jsonData['image'],
      price: jsonData['price'],
      desc: jsonData['desc'],
      productDate: jsonData['productDate'],
      id: jsonData['id']
    );
  }
}
