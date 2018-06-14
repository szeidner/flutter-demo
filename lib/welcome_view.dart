import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/ghost_button.dart';
import 'package:flutter_demo/config/strings.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Welcome());
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget widget;

    widget = new Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
      new Expanded(
        child: new WelcomeBody(),
      )
    ]);

    return widget;
  }
}

/// Text Body for the player screen
class WelcomeBody extends Container {
  WelcomeBody()
      : super(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Expanded(
                    child: new Center(
                  child: new Image.asset('assets/logo.png'),
                )),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Expanded(
                        child:
                            new GhostButton(Strings.welcomeSignUp, "/signIn")),
                    new Expanded(
                        child:
                            new GhostButton(Strings.welcomeSignIn, "/signIn")),
                  ],
                ),
                new Container(
                    margin: new EdgeInsets.only(
                        bottom: 50.0, left: 10.0, right: 10.0),
                    child: new RichText(
                      textAlign: TextAlign.center,
                      text: new TextSpan(
                        style: new TextStyle(
                          fontSize: 13.0,
                        ),
                        text: Strings.welcomeDisclaimer,
                      ),
                    )),
              ],
            ));
}
