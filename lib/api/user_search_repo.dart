import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:github_user_search_flutter/api/response_models/response.dart';
import 'package:github_user_search_flutter/api/response_models/response_serializers.dart';
import 'package:github_user_search_flutter/bloc/search_bloc.dart';
import 'package:github_user_search_flutter/models/user.dart';
import 'package:http/http.dart' as http;

class UserSearchRepo {
  Map<String, String> _githubTextMatchHeader = {
    HttpHeaders.acceptHeader: 'application/vnd.github.v3.text-match+json'
  };

  static const String _baseUrl = 'https://api.github.com/search/users';

  final http.Client client;

  final ValueChanged<UserSearchError> onError;

  final ValueChanged<List<User>> onSuccess;

  UserSearchRepo({this.client, this.onSuccess, this.onError});

  void getUsers(String query) async {
    try {
      await client
          .get(Uri.parse('$_baseUrl?q=$query&per_page=20'),
          headers: _githubTextMatchHeader)
          .then((response) {
        if (response.statusCode == HttpStatus.ok) {
          onSuccess(serializers
              .deserializeWith(Response.serializer, json.decode(response.body))
              .items
              .map((item) => User.fromResponse(item))
              .toList());
        }
      }).timeout(
        Duration(seconds: 30),
        onTimeout: () {
          onError(UserSearchError(
              TimeoutException("Request timeout"), HttpStatus.requestTimeout));
        },
      );
    } catch (e) {
      onError(UserSearchError(e, 0));
    }
  }
}