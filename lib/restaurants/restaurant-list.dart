import 'package:flutter/material.dart';


class RestaurantList extends StatelessWidget {
  RestaurantList(this.restaurants);
  final List restaurants;

  @override
  Widget build(BuildContext context) {
    return new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              itemBuilder: (_, int index) => new Text(restaurants[index]),
              itemCount: restaurants.length,
            ),
          ),
          new Divider(height: 1.0),
        ],
    );
  }
}