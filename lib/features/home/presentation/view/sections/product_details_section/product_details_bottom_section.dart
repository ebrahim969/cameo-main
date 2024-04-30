import 'package:flutter/material.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
import 'package:tigor_store/features/home/presentation/view/components/product_details_components/custom_background_container.dart';

class ProductDetailsBottomSection extends StatelessWidget {
  const ProductDetailsBottomSection({
    super.key, required this.model,
  });

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomBackGroundContainer(
        model: model,
      ),
    );
  }
}
