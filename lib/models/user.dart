import 'package:github_user_search_flutter/api/response_models/response.dart';

class User {
  String imageUrl;
  String userName;
  String fullName;
  String profileLink;

  User({this.imageUrl, this.userName, this.fullName, this.profileLink});

  User.fromResponse(Items items)
      : imageUrl = items.avatarUrl,
        userName = items.login,
        fullName = items.textMatches.forEach((textMatch) =>
            textMatch.property == "name" ? textMatch.fragment : items.login),
        profileLink = items.htmlUrl;
}
