import 'package:flutter/material.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
import 'package:tigor_store/features/home/presentation/view/sections/product_details_section/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.model});

  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(body: ProductDetailsViewBody(model: model)));
  }
}
