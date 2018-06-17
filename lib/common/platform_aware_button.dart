import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/platform_widget.dart';

class PlatformAwareButton extends PlatformWidget<CupertinoButton, FlatButton> {

  final Widget child;
  final VoidCallback onPressed;

  PlatformAwareButton({
    this.child,
    this.onPressed,
  });


  @override
  CupertinoButton createIosWidget(BuildContext context) =>
      new CupertinoButton (
        child: child,
        color: Colors.teal,
        onPressed: onPressed,
      );

  @override
  FlatButton createAndroidWidget(BuildContext context) =>
      new FlatButton(
        child: child,
        color: Colors.deepPurple,
        textColor: Colors.white,
        onPressed: onPressed,
      );
}