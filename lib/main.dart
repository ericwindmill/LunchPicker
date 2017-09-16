import 'package:flutter/material.dart';
import 'restaurants/restaurant-list.dart';
import 'restaurants/restaurant-detail.dart';
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
  final List<RestaurantDetail> _restaurants = <RestaurantDetail>[];

  handleVote(key) { // this.name
    // This breaks if there are two restaurants with the same name.
    // But that should never happen so it's okay.
    var currentRestaurant = _restaurants.firstWhere(
      (restaurant) => restaurant.name == key, 
      orElse: () => null
    );

    // Grab the position so that you can replace Restaurant Detail.
    int position = _restaurants.indexOf(currentRestaurant);
    setState(() {
      _restaurants[position] = new RestaurantDetail(
        currentRestaurant.name, 
        currentRestaurant.vote + 1,
        handleVote);
    });
  }

  handleSubmit(String text) {
    setState(() {
      _restaurants.insert(0, new RestaurantDetail(text, 1, handleVote));
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Lunch Picker')
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new RestaurantList(_restaurants),
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