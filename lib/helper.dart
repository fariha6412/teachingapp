import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({ this.title, this.onPressed});
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
      return FractionallySizedBox(
          widthFactor: 0.7, //means 80% of app width
          child: RaisedButton(
            onPressed: onPressed,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: HexColor('#2D6187'),
          ),
      );
  }
}

var  TextFieldDecoration =  InputDecoration(
    hintText: "Enter your value",hintStyle: TextStyle(color: Colors.white),
    filled: true,
    fillColor: HexColor('#A8DDA8'),
    hintMaxLines: 5,
    contentPadding:EdgeInsets.only(left: 30.0),
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        borderSide: BorderSide(color: Colors.blueAccent, width: 0.0)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        borderSide: BorderSide(color: Colors.blueAccent, width: 0.0)
    ),
);
