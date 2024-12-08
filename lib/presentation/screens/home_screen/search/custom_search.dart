import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/home_screen/search/search_result.dart';

class CustomSearch extends SearchDelegate {
  List<String> test = [];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return SearchResult(text: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showResults(context);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(test[index]),
            ),
          ),
        ),
        itemCount: test.length,
      );
    } else {
      List? filter = test.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showResults(context);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${filter[index]}"),
            ),
          ),
        ),
        itemCount: filter.length,
      );
    }
  }
}
