import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_user_search_flutter/bloc/search_bloc.dart';
import 'package:github_user_search_flutter/custom_widgets/gradient_app_bar.dart';
import 'package:github_user_search_flutter/models/user.dart';
import 'package:url_launcher/url_launcher.dart';

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
      );

  getResultHeadingWidget() =>
      Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0),
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
        return Center(
          child: Text(
            "Search not happening",
            style: TextStyle(
              color: const Color(0xff333333),
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      case 1:
        return Center(
          child: SizedBox(
            width: 32.0,
            height: 32.0,
            child: CircularProgressIndicator(),
          ),
        );
      case 2:
        return StreamBuilder<UnmodifiableListView<User>>(
          stream: widget.searchBLoC.usersList,
          builder: (context, snapshot) =>
          snapshot.hasData
              ? ListView(
            children:
            snapshot.data.map((user) => UserItem(user)).toList(),
          )
              : Center(child: Text("")),
        );
      case 3:
        return StreamBuilder(
          stream: widget.searchBLoC.errorResponse,
          builder: (context, snapshot) =>
              Center(
                child: Text(
                  snapshot.hasData ? snapshot.data.getMessage() : "",
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
        );
    }
  }

  void _handleSubmitted(String query) {
    widget.searchBLoC.searchAction.add(query);
    if (query.length > 0) {
      _textController.clear();
    }
    FocusScope.of(context).requestFocus(new FocusNode());
  }
}

class UserItem extends StatelessWidget {
  final User user;

  UserItem(this.user);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.fullName),
      subtitle: Text(user.userName),
      leading: CircleAvatar(
        backgroundImage:
        user.imageUrl != null ? NetworkImage(user.imageUrl) : null,
      ),
      trailing: IconButton(
        onPressed: () => _navigateToUserProfile(user.profileLink),
        icon: Icon(Icons.open_in_browser),
      ),
    );
  }

  void _navigateToUserProfile(String profileUrl) async {
    if (await canLaunch(profileUrl)) {
      launch(profileUrl);
    }
  }
}
