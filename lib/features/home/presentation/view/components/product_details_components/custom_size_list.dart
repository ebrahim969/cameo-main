import 'package:flutter/material.dart';
import 'package:tigor_store/core/utils/app_colors.dart';
import 'package:tigor_store/core/utils/app_styles.dart';

class CustomSizeList extends StatefulWidget {
  const CustomSizeList({super.key});

  @override
  State<CustomSizeList> createState() => _CustomSizeListState();
}

class _CustomSizeListState extends State<CustomSizeList> {
  List<String> items = ['S', 'M', 'L', 'XL', 'XXL'];
  String? selectedItem = "S";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Size",
          style: Styles.anybody600style16,
        ),
        SizedBox(
          width: 80,
          child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        const BorderSide(color: AppColors.primaryColor)),
              ),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: Styles.anybodyBoldstyle14,
                      )))
                  .toList(),
              onChanged: (item) => setState(() {
                    selectedItem = item;
                  })),
        )
      ],
    );
  }
}
