import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_user_search_flutter/customwidgets/gradient_app_bar.dart';
import 'package:github_user_search_flutter/utils/snackbar_util.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Github User Search',
      theme: ThemeData(
        primaryColor: const Color(0xffee3c48),
        splashColor: Colors.white24,
        splashFactory: InkRipple.splashFactory,
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
      widget.scaffoldKey.currentState
          .showSnackBar(SnackBarUtil.showNormalSnackBar("Search something"));
    }

    return new Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          new GradientAppBar(
            title: "Github User Search",
            needSearchAction: false,
            onClick: _handleSearchButtonClick,
          ),
          Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text('Press the '),
                            Tooltip(
                              message: 'search',
                              child: Icon(
                                Icons.search,
                                size: 18.0,
                              ),
                            ),
                            Text(' icon in the bottom right corner'),
                          ],
                        ),
                        const Text(
                            'and search for an integer between 0 and 100,000.'),
                      ],
                    ),
                  ],
            ),
          )),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _handleSearchButtonClick(true);
        },
        tooltip: 'Search',
        child: new Icon(Icons.search),
        backgroundColor: const Color(0xffee3c48),
      ),
    );
  }
}
