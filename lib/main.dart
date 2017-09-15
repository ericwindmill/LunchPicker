import 'package:flutter/material.dart';
import 'restaurants/restaurant-list.dart';
import 'util/text-input.dart';

void main() {
  runApp(new LunchPickerApp());
}

class LunchPickerApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'Lunch Picker',
        home: new VoteScreen(),
      );
    }
}

class VoteScreen extends StatefulWidget {
  @override
  State createState() => new VoteScreenState();
}

class VoteScreenState extends State<VoteScreen> {
  List restaurants = [];

  handleSubmit(String text) {
    setState(() {
      restaurants.insert(0, text);
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Lunch Picker App')
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new RestaurantList(restaurants),
          ),
          new Divider(height: 1.0),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor),
              child: new TextInputBuilder(handleSubmit),
          ),
        ],
      ),
    );
  }
}