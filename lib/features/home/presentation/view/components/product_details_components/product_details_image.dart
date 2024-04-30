import 'package:flutter/material.dart';
import 'package:tigor_store/features/home/presentation/view/components/home_components/custom_network_image_widget.dart';

import '../../../../data/model/product_model.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    super.key,
    required this.model,
  });

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      circle: false,
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      imageUrl: model.image,
    );
  }
}
