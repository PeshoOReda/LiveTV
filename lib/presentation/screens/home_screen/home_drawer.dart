import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_style.dart';
import '../../../core/utils/colors_manger.dart';
import '../../../core/utils/strings_manager.dart';

typedef OnDrawerItemClicked = void Function(MenuItem);

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key, required this.onDrawerItemClicked});

  final OnDrawerItemClicked onDrawerItemClicked;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 326.w,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 110.h,
              color: ColorsManager.green,
              child: Text(StringsManager.drawerTitle, style: AppStyle.drawer),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      onDrawerItemClicked(MenuItem.categories);
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.list,
                          size: 35.sp,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Categories",
                          style: AppStyle.drawerItem,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  InkWell(
                    onTap: () {
                      onDrawerItemClicked(MenuItem.settings);
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 35.sp,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Settings",
                          style: AppStyle.drawerItem,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum MenuItem {
  categories,
  settings,
}
