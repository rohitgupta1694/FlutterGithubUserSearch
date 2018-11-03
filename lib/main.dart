import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:github_user_search_flutter/customwidgets/gradient_app_bar.dart';
import 'package:github_user_search_flutter/utils/platform_adaptive.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: new MyHomePage(title: 'Flutter Demo'),
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:  Column(
          children: <Widget>[
            new GradientAppBar("Custom Gradient App Bar"),
            Text(
              "New gradient toolbar",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
    );
    /*return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF232526),
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
              },
            ),
          ),
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '0',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );*/
  }
}
