import 'package:flutter/material.dart';

import '../../../../../data_model/category_data_model.dart';
import '../../../../../source/api_manager/api_manager.dart';
import '../../../../../source/model/sources_response/sources.dart';
import 'widget/sources_widget.dart';

class CategoryDetails extends StatelessWidget {
  final CategoryDM categoryDM;

  const CategoryDetails({super.key, required this.categoryDM});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getSources(categoryDM.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data?.status == "error" || snapshot.hasError) {
            return Text(snapshot.data?.message ?? "Check Internet Connection");
          }
          List<Source> sources = snapshot.data!.sources!;
          return SourcesWidget(
            sources: sources,
          );
        });
  }
}
