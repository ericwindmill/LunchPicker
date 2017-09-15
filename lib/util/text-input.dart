import 'package:flutter/material.dart';
/* This is a text input builder, that in this case is being used to add entries to the vote page for restaurants. It takes in a List, which will come from the parent Widget.

The widget itself provides a text input feild and an input icon.
There is also a _handleSubmit function, which is used to add the users input to the List that's passed in. In this case, the List is a list of restaurants which the team will vote on for lunch.
*/
class TextInputBuilder extends StatelessWidget  {
  TextInputBuilder(this.handleSubmit);
  final handleSubmit;

  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: handleSubmit,
                decoration: new InputDecoration.collapsed(
                  hintText: 'Suggest a Restaurant'
                ),
              ),
            ),
            new Container(
                margin: new EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => handleSubmit(_textController.text)
                ),
              ),
          ],
        ),
      ),
    );
  }
}