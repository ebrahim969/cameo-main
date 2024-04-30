import 'package:flutter/material.dart';
import 'package:tigor_store/core/utils/app_colors.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
import 'package:tigor_store/features/home/presentation/view/components/product_details_components/custom_details_widget.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({
    super.key, required this.model,
  });

  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.5,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColors.primaryColor,
                offset: Offset(3, -3),
                blurRadius: 5)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
      child: CustomDetailsWidget(
        model: model,
      ),
    );
  }
}
