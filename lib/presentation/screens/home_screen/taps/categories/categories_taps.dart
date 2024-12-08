import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../data_model/category_data_model.dart';
import 'category_widget.dart';

typedef OnCategoryItemClicked = void Function(CategoryDM);

class CategoriesTaps extends StatelessWidget {
  const CategoriesTaps({super.key, required this.onCategoryItemClicked});

  final OnCategoryItemClicked onCategoryItemClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            "Pick your category \n of interest",
            style: AppStyle.pickCategory,
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 25.w),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                onCategoryItemClicked(CategoryDM.getAllCategories[index]);
              },
              child: CategoryWidget(
                index: index,
                categoryDM: CategoryDM.getAllCategories[index],
              ),
            ),
            itemCount: CategoryDM.getAllCategories.length,
          ))
        ],
      ),
    );
  }
}
