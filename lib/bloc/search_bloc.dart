import 'dart:async';
import 'dart:collection';

import 'package:github_user_search_flutter/api/user_search_repo.dart';
import 'package:github_user_search_flutter/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class SearchBLoC {
  ///Search State Object
  final _searchStateSubject = BehaviorSubject<int>(seedValue: 0);

  ValueObservable<int> get searchState =>
      _searchStateSubject.distinct().shareValue(seedValue: 0);

  ///Text View Search String Stream Object
  final _searchQuerySubject = BehaviorSubject<String>();

  Stream<String> get searchText => _searchQuerySubject.stream;

  ///Users List Stream Object
  final _usersListSubject = BehaviorSubject<UnmodifiableListView<User>>();

  Stream<UnmodifiableListView<User>> get usersList => _usersListSubject.stream;

  ///Search Button Stream Object
  final _searchActionController = StreamController<String>();

  Sink<String> get searchAction => _searchActionController.sink;

  ///BLoC Constructor
  SearchBLoC() {
    _searchActionController.stream.listen((searchString) {
      if (searchString.length > 0) {
        _getUsersListAndUpdate(searchString);
        _searchQuerySubject.addError("");
      } else {
        _searchQuerySubject.addError("Please enter username first");
      }
    });
  }

  ///API Call to fetch Users List
  _getUsersListAndUpdate(String searchString) async {
    _searchStateSubject.add(1);
    _usersListSubject.add(UnmodifiableListView(
        await UserSearchRepo(client: http.Client()).getUsers(searchString)));
    _searchStateSubject.add(2);
  }

  ///Dispose all streams
  void close() {
    _searchActionController.close();
    _searchQuerySubject.close();
    _usersListSubject.close();
  }
}
