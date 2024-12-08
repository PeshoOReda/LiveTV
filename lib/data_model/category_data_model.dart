import 'package:flutter/material.dart';

import '../core/utils/assets_manager.dart';
import '../core/utils/colors_manger.dart';
import '../core/utils/strings_manager.dart';

class CategoryDM {
  String id;
  String title;
  Color bgColor;
  String imagePath;
  CategoryDM(
      {required this.id,
      required this.title,
      required this.imagePath,
      required this.bgColor});
  static List<CategoryDM> getAllCategories = [
    CategoryDM(
        id: StringsManager.sportsBackEndId,
        title: StringsManager.sports,
        imagePath: AssetsManager.sports,
        bgColor: ColorsManager.red),
    CategoryDM(
        id: StringsManager.generalBackEndId,
        title: StringsManager.general,
        imagePath: AssetsManager.general,
        bgColor: Colors.grey),
    CategoryDM(
        id: StringsManager.healthsBackEndId,
        title: StringsManager.health,
        imagePath: AssetsManager.health,
        bgColor: ColorsManager.pink),
    CategoryDM(
        id: StringsManager.businessBackEndId,
        title: StringsManager.business,
        imagePath: AssetsManager.business,
        bgColor: ColorsManager.brown),
    CategoryDM(
        id: StringsManager.scienceBackEndId,
        title: StringsManager.science,
        imagePath: AssetsManager.science,
        bgColor: ColorsManager.yallow),
    CategoryDM(
        id: StringsManager.entertainmentBackEndId,
        title: StringsManager.entertainment,
        imagePath: AssetsManager.entertainment,
        bgColor: ColorsManager.blue),
    CategoryDM(
        id: StringsManager.technologyBackEndId,
        title: StringsManager.technology,
        imagePath: AssetsManager.technology,
        bgColor: ColorsManager.green),
  ];
}
