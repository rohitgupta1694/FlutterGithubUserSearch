import 'package:flutter/material.dart';
import 'package:github_user_search_flutter/bloc/search_bloc.dart';

class SearchBLoCProvider extends InheritedWidget {
  final SearchBLoC bloc;

  SearchBLoCProvider({Key key, SearchBLoC bloc, Widget child})
      : bloc = bloc ?? SearchBLoC(),
        super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static SearchBLoC of(BuildContext context) {
    //* What it does is through the "of" function, it looks through the context of a widget from the deepest in the widget tree
    //* and it keeps travelling up to each widget's parent's context until it finds a "Provider" widget
    //* and performs the type conversion to Provider through "as Provider" and then access the Provider's bloc instance variable
    return (context.inheritFromWidgetOfExactType(SearchBLoCProvider)
            as SearchBLoCProvider)
        .bloc;
  }
}
