import 'package:flutter/material.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
import 'package:tigor_store/features/home/presentation/view/components/product_details_components/product_details_app_bar.dart';
import 'package:tigor_store/features/home/presentation/view/components/product_details_components/product_details_image.dart';
import 'package:tigor_store/features/home/presentation/view/sections/product_details_section/product_details_bottom_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.model,
  });

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ProductDetailsImage(model: model),
        const ProductDetailsAppBar(),
        ProductDetailsBottomSection(model: model,),
      ],
    );
  }
}
