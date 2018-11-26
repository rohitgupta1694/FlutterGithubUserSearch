import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_user_search_flutter/bloc/search_bloc.dart';
import 'package:github_user_search_flutter/custom_widgets/gradient_app_bar.dart';
import 'package:github_user_search_flutter/models/user.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key, this.searchBLoC}) : super(key: key);

  final SearchBLoC searchBLoC;

  @override
  _SearchScreenState createState() => new _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return new Scaffold(
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
                  getDividerWidget(),
                  getRemainingAreaWidget(),
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
            StreamBuilder(
                stream: widget.searchBLoC.searchText,
                builder: (context, snapshot) =>
                    Flexible(
                      child: TextField(
                        maxLines: 1,
                        controller: _textController,
                        onSubmitted: _handleSubmitted,
                        decoration: InputDecoration(
                          labelText: snapshot.error != null && !snapshot.hasData
                              ? snapshot.error
                              : "Type something...",
                          labelStyle: TextStyle(
                              color: snapshot.error != null && !snapshot.hasData
                                  ? const Color(0xbfee3c48)
                                  : const Color(0xffaaaaaa)),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )),
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

  getDividerWidget() =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Divider(height: 0.5, color: Colors.grey[400]),
      );

  getRemainingAreaWidget() =>
      Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                getResultHeadingWidget(),
                StreamBuilder(
                  stream: widget.searchBLoC.searchState,
                  initialData: widget.searchBLoC.searchState.value,
                  builder: (context, snapshot) =>
                      Expanded(child: getUsersResultWidget(snapshot.data)),
                ),
              ],
            ),
          ),
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

  getUsersResultWidget(int searchState) {
    switch (searchState) {
      case 0:
        return Center(child: Text("Search not happening"));
      case 1:
        return Center(
          child: SizedBox(
            width: 32.0,
            height: 32.0,
            child: CircularProgressIndicator(
              backgroundColor: const Color(0xffee3c48),
            ),
          ),
        );
      case 2:
        return StreamBuilder<UnmodifiableListView<User>>(
          stream: widget.searchBLoC.usersList,
          builder: (context, snapshot) =>
          snapshot.hasData
              ? Center(
              child: Text(
                  "Search complete, List count: ${snapshot.data.length}"))
              : Center(
              child: Text(
                  "Search inComplete due to some error, Error: ${snapshot
                      .error}")),
        );
    }
  }

  void _handleSubmitted(String query) {
    widget.searchBLoC.searchAction.add(query);
    FocusScope.of(context).requestFocus(new FocusNode());
  }
}
