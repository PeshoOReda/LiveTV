import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/colors_manger.dart';
import '../../../../../../source/model/sources_response/sources.dart';

class SourceItemWidget extends StatelessWidget {
  const SourceItemWidget(
      {super.key, required this.source, required this.isSelected});

  final Source source;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: isSelected ? ColorsManager.green : Colors.transparent,
          border: Border.all(width: 3, color: ColorsManager.green),
          borderRadius: BorderRadius.circular(25.r)),
      child: Text(
        source.name!,
        style: TextStyle(
            color: isSelected ? ColorsManager.white : ColorsManager.green),
      ),
    );
  }
}
