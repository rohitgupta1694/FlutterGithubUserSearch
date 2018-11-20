import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_user_search_flutter/customwidgets/gradient_app_bar.dart';
import 'package:github_user_search_flutter/utils/snackbar_util.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key, this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  _SearchScreenState createState() => new _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    void _handleSearchButtonClick(bool clickStatus) {
      //TODO Open Search screen
      widget.scaffoldKey.currentState
          .showSnackBar(SnackBarUtil.showNormalSnackBar("Search something"));

      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return SearchScreen();
      }));
    }

    return new Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          new GradientAppBar(
            title: "Search",
            needBackButton: true,
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
                        'and search for any user on Github using thier login name'),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
