import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/categoy_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20.0),
      children: DUMMY_CATEGORIES
          .map((cat) => CategoryItem(cat.id, cat.title, cat.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
