import 'package:flutter/material.dart';

class GhostButton extends StatelessWidget {
  final String label;
  final String route;

  GhostButton(this.label, this.route);

  @override
  Widget build(BuildContext context) {
    return new FlatButton(
      textColor: Colors.white,
      onPressed: () {},
      child: new Container(
          constraints:
              new BoxConstraints.expand(width: double.infinity, height: 50.0),
          margin: new EdgeInsets.only(
              bottom: 15.0, left: 0.0, right: 0.0, top: 15.0),
          decoration: new ShapeDecoration(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.all(Radius.circular(5.0)),
              side: new BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          child: new Center(
            child: new Text(label),
          )),
    );
  }
}
