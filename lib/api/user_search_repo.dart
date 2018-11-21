import 'dart:convert';

import 'package:github_user_search_flutter/api/response_models/response.dart';
import 'package:github_user_search_flutter/api/response_models/response_serializers.dart';
import 'package:github_user_search_flutter/models/user.dart';
import 'package:http/http.dart' as http;

class UserSearchRepo {
  static const String baseUrl = 'https://api.github.com/search/users';

  final http.Client client;

  UserSearchRepo({this.client});

  Future<List<User>> getUsers(String query) async {
    final response =
    await http.get(Uri.parse('$baseUrl?q=$query&per_page=20'));
    if (response.statusCode == 200) {
      return serializers
          .deserializeWith(Response.serializer, json.decode(response.body))
          .items
          .map((item) => User.fromResponse(item))
          .toList();
    }
    return [];
  }
}
