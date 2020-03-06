import 'package:flutter/material.dart';

class Snack extends SnackBar {

  Snack(SnackType type, {String text, SnackBarAction action}) : 
  type = type, text = text, action = action,
  super(
    content: (type.icon == null) ? 
      Text(text ?? type.text, style: TextStyle(color: Colors.white)) : 
      Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 12), 
            child: Icon(type.icon, color: Colors.white)
          ), 
          Text(text ?? type.text, style: TextStyle(color: Colors.white))
        ]
      ),
    backgroundColor: type.color,
    action: action
  );

  SnackType type;
  String text;
  SnackBarAction action;

  Snack.authenticationError({String text = "Error authenticating. Please try again", SnackBarAction action}) : this(SnackType.error(), text: text, action: action);

  display(BuildContext context) => Scaffold.of(context).showSnackBar(this);

}

class SnackType {

  SnackType(this.color, this.icon, {this.text});

  Color color;
  IconData icon;
  String text;

  SnackType.error() : this(Colors.red, Icons.error, text: 'There was an error');
  SnackType.warning() : this(Colors.orange, Icons.warning, text: 'Warning : ...');
  SnackType.success() : this(Colors.green, Icons.check, text: 'Success !');
  SnackType.info() : this(Colors.blue, Icons.info, text: 'Information');

}