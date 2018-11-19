import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'user_serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  @BuiltValueField(wireName: 'total_count')
  int get totalCount;

  @BuiltValueField(wireName: 'incomplete_results')
  bool get incompleteResults;

  @BuiltValueField(wireName: 'items')
  BuiltList<Items> get items;

  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  static Serializer<User> get serializer => _$userSerializer;
}

abstract class Items implements Built<Items, ItemsBuilder> {
  Items._();

  factory Items([updates(ItemsBuilder b)]) = _$Items;

  @BuiltValueField(wireName: 'login')
  String get login;

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'node_id')
  String get nodeId;

  @BuiltValueField(wireName: 'avatar_url')
  String get avatarUrl;

  @BuiltValueField(wireName: 'gravatar_id')
  String get gravatarId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'html_url')
  String get htmlUrl;

  @BuiltValueField(wireName: 'followers_url')
  String get followersUrl;

  @BuiltValueField(wireName: 'following_url')
  String get followingUrl;

  @BuiltValueField(wireName: 'gists_url')
  String get gistsUrl;

  @BuiltValueField(wireName: 'starred_url')
  String get starredUrl;

  @BuiltValueField(wireName: 'subscriptions_url')
  String get subscriptionsUrl;

  @BuiltValueField(wireName: 'organizations_url')
  String get organizationsUrl;

  @BuiltValueField(wireName: 'repos_url')
  String get reposUrl;

  @BuiltValueField(wireName: 'events_url')
  String get eventsUrl;

  @BuiltValueField(wireName: 'received_events_url')
  String get receivedEventsUrl;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'site_admin')
  bool get siteAdmin;

  @BuiltValueField(wireName: 'score')
  double get score;

  @BuiltValueField(wireName: 'text_matches')
  BuiltList<TextMatches> get textMatches;

  String toJson() {
    return json.encode(serializers.serializeWith(Items.serializer, this));
  }

  static Items fromJson(String jsonString) {
    return serializers.deserializeWith(
        Items.serializer, json.decode(jsonString));
  }

  static Serializer<Items> get serializer => _$itemsSerializer;
}

abstract class TextMatches implements Built<TextMatches, TextMatchesBuilder> {
  TextMatches._();

  factory TextMatches([updates(TextMatchesBuilder b)]) = _$TextMatches;

  @BuiltValueField(wireName: 'object_url')
  String get objectUrl;

  @BuiltValueField(wireName: 'object_type')
  String get objectType;

  @BuiltValueField(wireName: 'property')
  String get property;

  @BuiltValueField(wireName: 'fragment')
  String get fragment;

  @BuiltValueField(wireName: 'matches')
  BuiltList<Matches> get matches;

  String toJson() {
    return json.encode(serializers.serializeWith(TextMatches.serializer, this));
  }

  static TextMatches fromJson(String jsonString) {
    return serializers.deserializeWith(
        TextMatches.serializer, json.decode(jsonString));
  }

  static Serializer<TextMatches> get serializer => _$textMatchesSerializer;
}

abstract class Matches implements Built<Matches, MatchesBuilder> {
  Matches._();

  factory Matches([updates(MatchesBuilder b)]) = _$Matches;

  @BuiltValueField(wireName: 'text')
  String get text;

  @BuiltValueField(wireName: 'indices')
  BuiltList<int> get indices;

  String toJson() {
    return json.encode(serializers.serializeWith(Matches.serializer, this));
  }

  static Matches fromJson(String jsonString) {
    return serializers.deserializeWith(
        Matches.serializer, json.decode(jsonString));
  }

  static Serializer<Matches> get serializer => _$matchesSerializer;
}
