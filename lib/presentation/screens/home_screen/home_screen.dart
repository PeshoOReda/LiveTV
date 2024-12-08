import 'package:flutter/material.dart';


import '../../../core/utils/assets_manager.dart';
import '../../../data_model/category_data_model.dart';
import 'home_drawer.dart';
import 'search/custom_search.dart';
import 'settings_taps.dart';
import 'taps/categories/categories_taps.dart';
import 'taps/category_details/category_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget selectedWidget = CategoriesTaps(
    onCategoryItemClicked: onCategoryClicked,
  );
  String title = "News App";

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(AssetsManager.routeImage),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: const Icon(Icons.search_rounded),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        drawer: HomeDrawer(onDrawerItemClicked: onDrawerItemClicked),
        body: selectedWidget,
      ),
    );
  }

  void onCategoryClicked(CategoryDM category) {
    title = category.title;
    selectedWidget = CategoryDetails(
      categoryDM: category,
    );
    setState(() {});
  }

  void onDrawerItemClicked(MenuItem item) {
    switch (item) {
      case MenuItem.categories:
        {
          selectedWidget = CategoriesTaps(
            onCategoryItemClicked: onCategoryClicked,
          );
        }
      case MenuItem.settings:
        {
          selectedWidget = const SettingsTaps();
        }
    }
    setState(() {});
  }
}
