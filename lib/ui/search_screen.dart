import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_user_search_flutter/custom_widgets/gradient_app_bar.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key, this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  _SearchScreenState createState() => new _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _searchState = 0;
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return new Scaffold(
      key: widget.scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          new GradientAppBar(
            title: "Search",
            needBackButton: true,
            needSearchAction: false,
          ),
          Expanded(
              child: Column(
                children: <Widget>[
                  getUserInputSearchWidget(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        constraints: BoxConstraints.expand(
                            width: double.maxFinite),
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            top: BorderSide(
                              width: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            getResultHeadingWidget(),
                            Expanded(
                              child: getUsersResultWidget(),
                            ),
//                        geUsersResultParentWidget(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  getUserInputSearchWidget() =>
      Container(
        margin: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: TextField(
                maxLines: 1,
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration(
                    labelText: 'Send a message', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RaisedButton(
                child: Text("Search"),
                color: const Color(0xffee3c48),
                textColor: Colors.white,
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            )
          ],
        ),
      );

  getResultHeadingWidget() =>
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(
          "Users",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
      );

  getUsersResultWidget() {
    switch (_searchState) {
      case 0:
        return Center(child: Text("Search not happening"));
      case 1:
        return Center(
          child: SizedBox(
            width: 32.0,
            height: 32.0,
            child: CircularProgressIndicator(
              semanticsLabel: "Loading...",
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
            ),
          ),
        );
      case 2:
        return Center(child: Text("Search complete"));
    }
  }

  void _handleSubmitted(String text) {
    if (text.length > 0) {
      setState(() {
        _searchState = 1;
      });

      Timer(Duration(milliseconds: 3300), () {
        setState(() {
          _searchState = 2;
        });
      });
    }
    _textController.clear();
    FocusScope.of(context).requestFocus(new FocusNode());
  }

}
