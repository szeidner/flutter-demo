import 'package:flutter/material.dart';
import 'package:flutter_demo/common/platform_aware_button.dart';
import 'package:flutter_demo/welcome_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
//        brightness: Brightness.dark,
//        primaryColor: Colors.lightBlue[800],
//        accentColor: Colors.cyan[600],
      ),
      routes: <String, WidgetBuilder> { //5
        '/home': (BuildContext context) => new MyHomePage(title: 'Learning Flutter'), //6
        '/welcome' : (BuildContext context) => new WelcomePage() //7
      },
      home: new MyHomePage(title: 'Learning Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              // overriding the theme for this text widget
              style: Theme.of(context).textTheme.display3,
            ),
            new PlatformAwareButton(
              child: new Text('Launch Welcome'),
              onPressed: () {
                Navigator.of(context).pushNamed('/welcome');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
