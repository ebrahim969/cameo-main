import 'package:flutter/material.dart';
import 'package:tigor_store/core/functions/navigation.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
import 'package:tigor_store/features/home/presentation/view/components/home_components/custom_network_image_widget.dart';

class CustomCategoryImage extends StatelessWidget {
  const CustomCategoryImage({
    super.key,
    required this.model,
  });
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        customNavigate(context, "/ProductDetailsView", extra: model);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: CustomNetworkImage(
          imageUrl: model.image,
          height: 200,
          width: 150,
          circle: false,
        ),
      ),
    );
  }
}
