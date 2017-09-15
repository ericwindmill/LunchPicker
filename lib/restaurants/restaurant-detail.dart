import 'package:flutter/material.dart';

class RestaurantDetail extends StatelessWidget {
  RestaurantDetail(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        children: <Widget>[
          new Text(name),
          new Divider(height: 1.0)
        ],
      ),
    );
  }
}