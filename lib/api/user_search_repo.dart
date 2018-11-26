import 'dart:convert';
import 'dart:io';

import 'package:github_user_search_flutter/api/response_models/response.dart';
import 'package:github_user_search_flutter/api/response_models/response_serializers.dart';
import 'package:github_user_search_flutter/models/user.dart';
import 'package:http/http.dart' as http;

class UserSearchRepo {
  Map<String, String> _githubTextMatchHeader = {
    HttpHeaders.acceptHeader: 'application/vnd.github.v3.text-match+json'
  };

  static const String _baseUrl = 'https://api.github.com/search/users';

  final http.Client client;

  UserSearchRepo({this.client});

  Future<List<User>> getUsers(String query) async {
    String finalUrl = '$_baseUrl?q=$query&per_page=20';

    final response =
    await client.get(Uri.parse(finalUrl), headers: _githubTextMatchHeader);
    if (response.statusCode != HttpStatus.ok) {
      throw UserSearchAPIError("Users could not be fetched.");
    }

    return serializers
        .deserializeWith(Response.serializer, json.decode(response.body))
        .items
        .map((item) => User.fromResponse(item))
        .toList();
  }
}

class UserSearchAPIError extends Error {
  final String message;

  UserSearchAPIError(this.message);
}
