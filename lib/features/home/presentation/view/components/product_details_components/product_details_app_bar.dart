import 'package:flutter/material.dart';
import 'package:tigor_store/core/functions/navigation.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              custompopNavigate(context);
            },
            icon: const Icon(Icons.arrow_back)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))
      ],
    );
  }
}
