import 'package:flutter/material.dart';
import 'package:tigor_store/core/utils/app_colors.dart';
import 'package:tigor_store/core/utils/app_styles.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';

class CustomPriceAndAddToCartWidget extends StatelessWidget {
  const CustomPriceAndAddToCartWidget({
    super.key,
    required this.model,
  });

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: AppColors.blakColor,
                offset: Offset(-2, 2),
                blurRadius: 5),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${model.price} \$",
            style: Styles.anybody400style24,
          ),
          InkWell(
            onTap: () {
              // add product to cart view
            },
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black26),
              child:const Center(
                  child: Text(
                "+ Add To Cart",
                style: Styles.anybody400style16,
              )),
            ),
          )
        ],
      ),
    );
  }
}
