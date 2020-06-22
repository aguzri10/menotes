import 'package:flutter/material.dart';
import 'package:menotes/models/dummy_data.dart';

class TagDetails extends StatelessWidget {
  final CategoriesDummy category;

  const TagDetails({Key key, @required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          category.name,
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
