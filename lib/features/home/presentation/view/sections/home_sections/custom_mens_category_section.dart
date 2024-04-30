import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigor_store/core/utils/app_strings.dart';
import 'package:tigor_store/features/home/presentation/cubit/home_cubit/home_cubit.dart';
import 'package:tigor_store/features/home/presentation/view/components/home_components/custom_category_list_view.dart';
import 'package:tigor_store/features/home/presentation/view/components/home_components/custom_categorys_header.dart';
import 'package:tigor_store/features/home/presentation/view/components/home_components/custom_loading_product_widget.dart';

class CustomMensCategorysSection extends StatelessWidget {
  const CustomMensCategorysSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomCategorysHeader(
          title: AppString.mensWear,
          subTitle: AppString.superSummerSale,
          trailing: AppString.viewAll,
        ),
        BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is MensProductFailure) {
              Text(state.errMessage);
            }
          },
          builder: (context, state) {
            return state is MensProductLoading
                ? const CustomLoadingProductsWidget()
                : CustomCategoryListView(
                    dataList: context.read<HomeCubit>().mensProducts,
                  );
          },
        ),
      ],
    );
  }
}
