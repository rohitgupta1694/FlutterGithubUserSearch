import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_user_search_flutter/custom_widgets/gradient_app_bar.dart';
import 'package:github_user_search_flutter/ui/search_screen.dart';
import 'package:github_user_search_flutter/utils/search_bloc_provider.dart';

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
//      widget.scaffoldKey.currentState
//          .showSnackBar(SnackBarUtil.showNormalSnackBar("Search something"));
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return SearchScreen(
          searchBLoC: SearchBLoCProvider.of(context),
        );
      }));
    }

    return new Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          new GradientAppBar(
            title: "Github User Search",
            needBackButton: false,
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
                        'and search for any user on Github using their login name'),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
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
