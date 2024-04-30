import 'package:flutter/material.dart';
import 'package:tigor_store/core/utils/app_colors.dart';
import 'package:tigor_store/core/utils/app_styles.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
import 'package:tigor_store/features/home/presentation/view/components/product_details_components/custom_price_and_add_to_cart_widget.dart';
import 'package:tigor_store/features/home/presentation/view/components/product_details_components/custom_size_list.dart';

class CustomDetailsWidget extends StatelessWidget {
  const CustomDetailsWidget({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            model.title,
            style: Styles.anybody400style48
                .copyWith(fontSize: 38, color: AppColors.blakColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            model.desc,
            style: Styles.anybody400style11,
          ),
          const SizedBox(
            height: 32,
          ),
          const CustomSizeList(),
          const Spacer(),
          CustomPriceAndAddToCartWidget(model: model)
        ],
      ),
    );
  }
}
