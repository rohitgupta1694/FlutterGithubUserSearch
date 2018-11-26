import 'dart:async';
import 'dart:collection';
import 'dart:io';

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

  ///Error Object Stream Object
  final _errorResponseSubject = BehaviorSubject<UserSearchError>();

  Stream<UserSearchError> get errorResponse => _errorResponseSubject.stream;

  ///BLoC Constructor
  SearchBLoC() {
    _searchActionController.stream.listen((searchString) {
      if (searchString.length > 0) {
        _searchQuerySubject.add("done");
        _getUsersListAndUpdate(searchString);
      } else {
        _searchQuerySubject.addError("Please enter username first");
      }
    });
  }

  ///API Call to fetch Users List
  _getUsersListAndUpdate(String searchString) {
    _searchStateSubject.add(1);

    UserSearchRepo(
      client: http.Client(),
      onSuccess: (response) {
        _usersListSubject.add(UnmodifiableListView(response));
        _searchStateSubject.add(2);
      },
      onError: (userSearchError) {
        _errorResponseSubject.add(userSearchError);
        _searchStateSubject.add(3);
      },
    ).getUsers(searchString);
  }

  ///Dispose all streams
  void close() {
    _searchActionController.close();
    _searchQuerySubject.close();
    _usersListSubject.close();
  }
}

class UserSearchError extends Error {
  final Exception exception;
  final int statusCode;
  String message;

  UserSearchError(this.exception, this.statusCode) {
    switch (exception.runtimeType) {
      case TimeoutException:
        message = "Request time out";
        break;
      case SocketException:
        message = "No Internet connection";
        break;
      case HttpException:
        message = "Something went wrong";
        break;
    }
  }

  @override
  Type get runtimeType {
    return exception.runtimeType;
  }

  @override
  String toString() {
    return exception.toString();
  }

  String getMessage() {
    return message;
  }

  int getStatusCode() {
    return statusCode;
  }
}
