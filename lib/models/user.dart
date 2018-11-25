import 'package:github_user_search_flutter/api/response_models/response.dart';

class User {
  String imageUrl;
  String userName;
  String fullName;
  String profileLink;

  User({this.imageUrl, this.userName, this.fullName, this.profileLink});

  User.fromResponse(Items items) {
    fullName = userName = items.login;
    imageUrl = items.avatarUrl;
    items.textMatches.forEach((textMatch) {
      if (textMatch.property.contains('name')) {
        fullName = textMatch.fragment;
      }
    });
    profileLink = items.htmlUrl;
  }
}
