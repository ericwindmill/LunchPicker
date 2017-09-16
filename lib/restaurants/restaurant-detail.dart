import 'package:flutter/material.dart';

class RestaurantDetail extends StatelessWidget {
  RestaurantDetail(this.name, this.vote, this.increaseVote);
  final String name;
  int vote;
  final increaseVote;


  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      padding: const EdgeInsets.all(15.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            name,
            style: new TextStyle(
              fontSize: 20.0,
            ),
          ),
          new Text(
            vote.toString(),
            style: new TextStyle(
              fontSize: 20.0,
            )
          ),
          new FlatButton(
            child: new Text('VOTE'),
            color: Colors.green[400],
            onPressed: () => increaseVote(this.name),
          )
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          new BoxShadow (
            color: Colors.grey,
            offset: new Offset(0.0, 2.0),
            blurRadius: 4.0,
          )
        ]
      ),
    );
  }
}