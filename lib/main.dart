import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_user_search_flutter/customwidgets/gradient_app_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Github User Search',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(scaffoldKey: GlobalKey<ScaffoldState>()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    void _handleSearchButtonClick(bool clickStatus) {
      //TODO Open Search screen
      widget.scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("Clicked on Search Button"),
      ));
    }

    return new Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          new GradientAppBar(
            title: "Github User Search",
            onClick: _handleSearchButtonClick,
          ),
          Text(
            "New gradient toolbar",
            style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
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
