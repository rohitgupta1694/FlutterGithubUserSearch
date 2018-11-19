// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<User> _$userSerializer = new _$UserSerializer();
Serializer<Items> _$itemsSerializer = new _$ItemsSerializer();
Serializer<TextMatches> _$textMatchesSerializer = new _$TextMatchesSerializer();
Serializer<Matches> _$matchesSerializer = new _$MatchesSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'total_count',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'incomplete_results',
      serializers.serialize(object.incompleteResults,
          specifiedType: const FullType(bool)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Items)])),
    ];

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'incomplete_results':
          result.incompleteResults = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Items)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ItemsSerializer implements StructuredSerializer<Items> {
  @override
  final Iterable<Type> types = const [Items, _$Items];
  @override
  final String wireName = 'Items';

  @override
  Iterable serialize(Serializers serializers, Items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'node_id',
      serializers.serialize(object.nodeId,
          specifiedType: const FullType(String)),
      'avatar_url',
      serializers.serialize(object.avatarUrl,
          specifiedType: const FullType(String)),
      'gravatar_id',
      serializers.serialize(object.gravatarId,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'html_url',
      serializers.serialize(object.htmlUrl,
          specifiedType: const FullType(String)),
      'followers_url',
      serializers.serialize(object.followersUrl,
          specifiedType: const FullType(String)),
      'following_url',
      serializers.serialize(object.followingUrl,
          specifiedType: const FullType(String)),
      'gists_url',
      serializers.serialize(object.gistsUrl,
          specifiedType: const FullType(String)),
      'starred_url',
      serializers.serialize(object.starredUrl,
          specifiedType: const FullType(String)),
      'subscriptions_url',
      serializers.serialize(object.subscriptionsUrl,
          specifiedType: const FullType(String)),
      'organizations_url',
      serializers.serialize(object.organizationsUrl,
          specifiedType: const FullType(String)),
      'repos_url',
      serializers.serialize(object.reposUrl,
          specifiedType: const FullType(String)),
      'events_url',
      serializers.serialize(object.eventsUrl,
          specifiedType: const FullType(String)),
      'received_events_url',
      serializers.serialize(object.receivedEventsUrl,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'site_admin',
      serializers.serialize(object.siteAdmin,
          specifiedType: const FullType(bool)),
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(double)),
      'text_matches',
      serializers.serialize(object.textMatches,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TextMatches)])),
    ];

    return result;
  }

  @override
  Items deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gravatar_id':
          result.gravatarId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'followers_url':
          result.followersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'following_url':
          result.followingUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gists_url':
          result.gistsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'starred_url':
          result.starredUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscriptions_url':
          result.subscriptionsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organizations_url':
          result.organizationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repos_url':
          result.reposUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'received_events_url':
          result.receivedEventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_admin':
          result.siteAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'text_matches':
          result.textMatches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TextMatches)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$TextMatchesSerializer implements StructuredSerializer<TextMatches> {
  @override
  final Iterable<Type> types = const [TextMatches, _$TextMatches];
  @override
  final String wireName = 'TextMatches';

  @override
  Iterable serialize(Serializers serializers, TextMatches object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'object_url',
      serializers.serialize(object.objectUrl,
          specifiedType: const FullType(String)),
      'object_type',
      serializers.serialize(object.objectType,
          specifiedType: const FullType(String)),
      'property',
      serializers.serialize(object.property,
          specifiedType: const FullType(String)),
      'fragment',
      serializers.serialize(object.fragment,
          specifiedType: const FullType(String)),
      'matches',
      serializers.serialize(object.matches,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Matches)])),
    ];

    return result;
  }

  @override
  TextMatches deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TextMatchesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'object_url':
          result.objectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'object_type':
          result.objectType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'property':
          result.property = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fragment':
          result.fragment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'matches':
          result.matches.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Matches)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MatchesSerializer implements StructuredSerializer<Matches> {
  @override
  final Iterable<Type> types = const [Matches, _$Matches];
  @override
  final String wireName = 'Matches';

  @override
  Iterable serialize(Serializers serializers, Matches object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'indices',
      serializers.serialize(object.indices,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];

    return result;
  }

  @override
  Matches deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'indices':
          result.indices.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  @override
  final BuiltList<Items> items;

  factory _$User([void updates(UserBuilder b)]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.totalCount, this.incompleteResults, this.items}) : super._() {
    if (totalCount == null) {
      throw new BuiltValueNullFieldError('User', 'totalCount');
    }
    if (incompleteResults == null) {
      throw new BuiltValueNullFieldError('User', 'incompleteResults');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('User', 'items');
    }
  }

  @override
  User rebuild(void updates(UserBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        totalCount == other.totalCount &&
        incompleteResults == other.incompleteResults &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, totalCount.hashCode), incompleteResults.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('totalCount', totalCount)
          ..add('incompleteResults', incompleteResults)
          ..add('items', items))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  int _totalCount;

  int get totalCount => _$this._totalCount;

  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  bool _incompleteResults;

  bool get incompleteResults => _$this._incompleteResults;

  set incompleteResults(bool incompleteResults) =>
      _$this._incompleteResults = incompleteResults;

  ListBuilder<Items> _items;

  ListBuilder<Items> get items => _$this._items ??= new ListBuilder<Items>();

  set items(ListBuilder<Items> items) => _$this._items = items;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _incompleteResults = _$v.incompleteResults;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void updates(UserBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              totalCount: totalCount,
              incompleteResults: incompleteResults,
              items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Items extends Items {
  @override
  final String login;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String avatarUrl;
  @override
  final String gravatarId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String followersUrl;
  @override
  final String followingUrl;
  @override
  final String gistsUrl;
  @override
  final String starredUrl;
  @override
  final String subscriptionsUrl;
  @override
  final String organizationsUrl;
  @override
  final String reposUrl;
  @override
  final String eventsUrl;
  @override
  final String receivedEventsUrl;
  @override
  final String type;
  @override
  final bool siteAdmin;
  @override
  final double score;
  @override
  final BuiltList<TextMatches> textMatches;

  factory _$Items([void updates(ItemsBuilder b)]) =>
      (new ItemsBuilder()..update(updates)).build();

  _$Items._(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.type,
      this.siteAdmin,
      this.score,
      this.textMatches})
      : super._() {
    if (login == null) {
      throw new BuiltValueNullFieldError('Items', 'login');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Items', 'id');
    }
    if (nodeId == null) {
      throw new BuiltValueNullFieldError('Items', 'nodeId');
    }
    if (avatarUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'avatarUrl');
    }
    if (gravatarId == null) {
      throw new BuiltValueNullFieldError('Items', 'gravatarId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Items', 'url');
    }
    if (htmlUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'htmlUrl');
    }
    if (followersUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'followersUrl');
    }
    if (followingUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'followingUrl');
    }
    if (gistsUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'gistsUrl');
    }
    if (starredUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'starredUrl');
    }
    if (subscriptionsUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'subscriptionsUrl');
    }
    if (organizationsUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'organizationsUrl');
    }
    if (reposUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'reposUrl');
    }
    if (eventsUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'eventsUrl');
    }
    if (receivedEventsUrl == null) {
      throw new BuiltValueNullFieldError('Items', 'receivedEventsUrl');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Items', 'type');
    }
    if (siteAdmin == null) {
      throw new BuiltValueNullFieldError('Items', 'siteAdmin');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('Items', 'score');
    }
    if (textMatches == null) {
      throw new BuiltValueNullFieldError('Items', 'textMatches');
    }
  }

  @override
  Items rebuild(void updates(ItemsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsBuilder toBuilder() => new ItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Items &&
        login == other.login &&
        id == other.id &&
        nodeId == other.nodeId &&
        avatarUrl == other.avatarUrl &&
        gravatarId == other.gravatarId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        followersUrl == other.followersUrl &&
        followingUrl == other.followingUrl &&
        gistsUrl == other.gistsUrl &&
        starredUrl == other.starredUrl &&
        subscriptionsUrl == other.subscriptionsUrl &&
        organizationsUrl == other.organizationsUrl &&
        reposUrl == other.reposUrl &&
        eventsUrl == other.eventsUrl &&
        receivedEventsUrl == other.receivedEventsUrl &&
        type == other.type &&
        siteAdmin == other.siteAdmin &&
        score == other.score &&
        textMatches == other.textMatches;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, login.hashCode),
                                                                                id.hashCode),
                                                                            nodeId.hashCode),
                                                                        avatarUrl.hashCode),
                                                                    gravatarId.hashCode),
                                                                url.hashCode),
                                                            htmlUrl.hashCode),
                                                        followersUrl.hashCode),
                                                    followingUrl.hashCode),
                                                gistsUrl.hashCode),
                                            starredUrl.hashCode),
                                        subscriptionsUrl.hashCode),
                                    organizationsUrl.hashCode),
                                reposUrl.hashCode),
                            eventsUrl.hashCode),
                        receivedEventsUrl.hashCode),
                    type.hashCode),
                siteAdmin.hashCode),
            score.hashCode),
        textMatches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Items')
          ..add('login', login)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('avatarUrl', avatarUrl)
          ..add('gravatarId', gravatarId)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('followersUrl', followersUrl)
          ..add('followingUrl', followingUrl)
          ..add('gistsUrl', gistsUrl)
          ..add('starredUrl', starredUrl)
          ..add('subscriptionsUrl', subscriptionsUrl)
          ..add('organizationsUrl', organizationsUrl)
          ..add('reposUrl', reposUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('receivedEventsUrl', receivedEventsUrl)
          ..add('type', type)
          ..add('siteAdmin', siteAdmin)
          ..add('score', score)
          ..add('textMatches', textMatches))
        .toString();
  }
}

class ItemsBuilder implements Builder<Items, ItemsBuilder> {
  _$Items _$v;

  String _login;

  String get login => _$this._login;

  set login(String login) => _$this._login = login;

  int _id;

  int get id => _$this._id;

  set id(int id) => _$this._id = id;

  String _nodeId;

  String get nodeId => _$this._nodeId;

  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _avatarUrl;

  String get avatarUrl => _$this._avatarUrl;

  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  String _gravatarId;

  String get gravatarId => _$this._gravatarId;

  set gravatarId(String gravatarId) => _$this._gravatarId = gravatarId;

  String _url;

  String get url => _$this._url;

  set url(String url) => _$this._url = url;

  String _htmlUrl;

  String get htmlUrl => _$this._htmlUrl;

  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _followersUrl;

  String get followersUrl => _$this._followersUrl;

  set followersUrl(String followersUrl) => _$this._followersUrl = followersUrl;

  String _followingUrl;

  String get followingUrl => _$this._followingUrl;

  set followingUrl(String followingUrl) => _$this._followingUrl = followingUrl;

  String _gistsUrl;

  String get gistsUrl => _$this._gistsUrl;

  set gistsUrl(String gistsUrl) => _$this._gistsUrl = gistsUrl;

  String _starredUrl;

  String get starredUrl => _$this._starredUrl;

  set starredUrl(String starredUrl) => _$this._starredUrl = starredUrl;

  String _subscriptionsUrl;

  String get subscriptionsUrl => _$this._subscriptionsUrl;

  set subscriptionsUrl(String subscriptionsUrl) =>
      _$this._subscriptionsUrl = subscriptionsUrl;

  String _organizationsUrl;

  String get organizationsUrl => _$this._organizationsUrl;

  set organizationsUrl(String organizationsUrl) =>
      _$this._organizationsUrl = organizationsUrl;

  String _reposUrl;

  String get reposUrl => _$this._reposUrl;

  set reposUrl(String reposUrl) => _$this._reposUrl = reposUrl;

  String _eventsUrl;

  String get eventsUrl => _$this._eventsUrl;

  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _receivedEventsUrl;

  String get receivedEventsUrl => _$this._receivedEventsUrl;

  set receivedEventsUrl(String receivedEventsUrl) =>
      _$this._receivedEventsUrl = receivedEventsUrl;

  String _type;

  String get type => _$this._type;

  set type(String type) => _$this._type = type;

  bool _siteAdmin;

  bool get siteAdmin => _$this._siteAdmin;

  set siteAdmin(bool siteAdmin) => _$this._siteAdmin = siteAdmin;

  double _score;

  double get score => _$this._score;

  set score(double score) => _$this._score = score;

  ListBuilder<TextMatches> _textMatches;

  ListBuilder<TextMatches> get textMatches =>
      _$this._textMatches ??= new ListBuilder<TextMatches>();

  set textMatches(ListBuilder<TextMatches> textMatches) =>
      _$this._textMatches = textMatches;

  ItemsBuilder();

  ItemsBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _avatarUrl = _$v.avatarUrl;
      _gravatarId = _$v.gravatarId;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _followersUrl = _$v.followersUrl;
      _followingUrl = _$v.followingUrl;
      _gistsUrl = _$v.gistsUrl;
      _starredUrl = _$v.starredUrl;
      _subscriptionsUrl = _$v.subscriptionsUrl;
      _organizationsUrl = _$v.organizationsUrl;
      _reposUrl = _$v.reposUrl;
      _eventsUrl = _$v.eventsUrl;
      _receivedEventsUrl = _$v.receivedEventsUrl;
      _type = _$v.type;
      _siteAdmin = _$v.siteAdmin;
      _score = _$v.score;
      _textMatches = _$v.textMatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Items other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Items;
  }

  @override
  void update(void updates(ItemsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Items build() {
    _$Items _$result;
    try {
      _$result = _$v ??
          new _$Items._(
              login: login,
              id: id,
              nodeId: nodeId,
              avatarUrl: avatarUrl,
              gravatarId: gravatarId,
              url: url,
              htmlUrl: htmlUrl,
              followersUrl: followersUrl,
              followingUrl: followingUrl,
              gistsUrl: gistsUrl,
              starredUrl: starredUrl,
              subscriptionsUrl: subscriptionsUrl,
              organizationsUrl: organizationsUrl,
              reposUrl: reposUrl,
              eventsUrl: eventsUrl,
              receivedEventsUrl: receivedEventsUrl,
              type: type,
              siteAdmin: siteAdmin,
              score: score,
              textMatches: textMatches.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'textMatches';
        textMatches.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TextMatches extends TextMatches {
  @override
  final String objectUrl;
  @override
  final String objectType;
  @override
  final String property;
  @override
  final String fragment;
  @override
  final BuiltList<Matches> matches;

  factory _$TextMatches([void updates(TextMatchesBuilder b)]) =>
      (new TextMatchesBuilder()..update(updates)).build();

  _$TextMatches._(
      {this.objectUrl,
      this.objectType,
      this.property,
      this.fragment,
      this.matches})
      : super._() {
    if (objectUrl == null) {
      throw new BuiltValueNullFieldError('TextMatches', 'objectUrl');
    }
    if (objectType == null) {
      throw new BuiltValueNullFieldError('TextMatches', 'objectType');
    }
    if (property == null) {
      throw new BuiltValueNullFieldError('TextMatches', 'property');
    }
    if (fragment == null) {
      throw new BuiltValueNullFieldError('TextMatches', 'fragment');
    }
    if (matches == null) {
      throw new BuiltValueNullFieldError('TextMatches', 'matches');
    }
  }

  @override
  TextMatches rebuild(void updates(TextMatchesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TextMatchesBuilder toBuilder() => new TextMatchesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TextMatches &&
        objectUrl == other.objectUrl &&
        objectType == other.objectType &&
        property == other.property &&
        fragment == other.fragment &&
        matches == other.matches;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, objectUrl.hashCode), objectType.hashCode),
                property.hashCode),
            fragment.hashCode),
        matches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TextMatches')
          ..add('objectUrl', objectUrl)
          ..add('objectType', objectType)
          ..add('property', property)
          ..add('fragment', fragment)
          ..add('matches', matches))
        .toString();
  }
}

class TextMatchesBuilder implements Builder<TextMatches, TextMatchesBuilder> {
  _$TextMatches _$v;

  String _objectUrl;

  String get objectUrl => _$this._objectUrl;

  set objectUrl(String objectUrl) => _$this._objectUrl = objectUrl;

  String _objectType;

  String get objectType => _$this._objectType;

  set objectType(String objectType) => _$this._objectType = objectType;

  String _property;

  String get property => _$this._property;

  set property(String property) => _$this._property = property;

  String _fragment;

  String get fragment => _$this._fragment;

  set fragment(String fragment) => _$this._fragment = fragment;

  ListBuilder<Matches> _matches;

  ListBuilder<Matches> get matches =>
      _$this._matches ??= new ListBuilder<Matches>();

  set matches(ListBuilder<Matches> matches) => _$this._matches = matches;

  TextMatchesBuilder();

  TextMatchesBuilder get _$this {
    if (_$v != null) {
      _objectUrl = _$v.objectUrl;
      _objectType = _$v.objectType;
      _property = _$v.property;
      _fragment = _$v.fragment;
      _matches = _$v.matches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TextMatches other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TextMatches;
  }

  @override
  void update(void updates(TextMatchesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TextMatches build() {
    _$TextMatches _$result;
    try {
      _$result = _$v ??
          new _$TextMatches._(
              objectUrl: objectUrl,
              objectType: objectType,
              property: property,
              fragment: fragment,
              matches: matches.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'matches';
        matches.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TextMatches', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Matches extends Matches {
  @override
  final String text;
  @override
  final BuiltList<int> indices;

  factory _$Matches([void updates(MatchesBuilder b)]) =>
      (new MatchesBuilder()..update(updates)).build();

  _$Matches._({this.text, this.indices}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('Matches', 'text');
    }
    if (indices == null) {
      throw new BuiltValueNullFieldError('Matches', 'indices');
    }
  }

  @override
  Matches rebuild(void updates(MatchesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchesBuilder toBuilder() => new MatchesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Matches && text == other.text && indices == other.indices;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), indices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Matches')
          ..add('text', text)
          ..add('indices', indices))
        .toString();
  }
}

class MatchesBuilder implements Builder<Matches, MatchesBuilder> {
  _$Matches _$v;

  String _text;

  String get text => _$this._text;

  set text(String text) => _$this._text = text;

  ListBuilder<int> _indices;

  ListBuilder<int> get indices => _$this._indices ??= new ListBuilder<int>();

  set indices(ListBuilder<int> indices) => _$this._indices = indices;

  MatchesBuilder();

  MatchesBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _indices = _$v.indices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Matches other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Matches;
  }

  @override
  void update(void updates(MatchesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Matches build() {
    _$Matches _$result;
    try {
      _$result = _$v ?? new _$Matches._(text: text, indices: indices.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'indices';
        indices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Matches', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
