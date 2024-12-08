import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../source/model/sources_response/sources.dart';
import '../../news/articles_list_widget.dart';
import 'source_item_widget.dart';

class SourcesWidget extends StatefulWidget {
  const SourcesWidget({super.key, required this.sources});

  final List<Source> sources;

  @override
  State<SourcesWidget> createState() => _SourcesWidgetState();
}

class _SourcesWidgetState extends State<SourcesWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TabBar(
                tabAlignment: TabAlignment.start,
                labelPadding: REdgeInsets.all(8),
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                tabs: widget.sources.map((source) {
                  return SourceItemWidget(
                    source: source,
                    isSelected: widget.sources.indexOf(source) == selectedIndex,
                  );
                }).toList()),
          ),
        ),
        ArticlesListWidget(source: widget.sources[selectedIndex])
      ],
    );
  }
}
