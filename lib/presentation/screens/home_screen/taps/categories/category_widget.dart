import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../data_model/category_data_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.categoryDM, required this.index});

  final CategoryDM categoryDM;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: categoryDM.bgColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.r),
            topLeft: Radius.circular(25.r),
            bottomLeft: Radius.circular(index.isEven ? 25.r : 0),
            bottomRight: Radius.circular(index.isEven ? 0.r : 25.r),
          )),
      child: Column(
        children: [
          Image.asset(
            categoryDM.imagePath,
            width: 142.w,
            height: 116.h,
          ),
          Text(
            categoryDM.title,
            style: AppStyle.categoryTitle,
          )
        ],
      ),
    );
  }
}
