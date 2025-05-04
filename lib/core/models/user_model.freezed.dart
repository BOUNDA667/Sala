// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get username => throw _privateConstructorUsedError;
  @HiveField(4)
  String get email => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get password => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get emailVerified => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get phoneVerified => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get blocked => throw _privateConstructorUsedError;
  @HiveField(10)
  bool get isPremium => throw _privateConstructorUsedError;
  @HiveField(11)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(12)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get subscriptionId => throw _privateConstructorUsedError;
  @HiveField(14)
  Subscription? get subscription => throw _privateConstructorUsedError;
  @HiveField(15)
  List<Todo>? get todos => throw _privateConstructorUsedError;
  @HiveField(16)
  List<Comment>? get comments => throw _privateConstructorUsedError;
  @HiveField(17)
  List<Notification>? get notifications => throw _privateConstructorUsedError;
  @HiveField(18)
  String get token => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? firstName,
      @HiveField(2) String? lastName,
      @HiveField(3) String username,
      @HiveField(4) String email,
      @HiveField(5) String? password,
      @HiveField(6) bool emailVerified,
      @HiveField(7) String? phone,
      @HiveField(8) bool phoneVerified,
      @HiveField(9) bool blocked,
      @HiveField(10) bool isPremium,
      @HiveField(11) DateTime createdAt,
      @HiveField(12) DateTime updatedAt,
      @HiveField(13) int? subscriptionId,
      @HiveField(14) Subscription? subscription,
      @HiveField(15) List<Todo>? todos,
      @HiveField(16) List<Comment>? comments,
      @HiveField(17) List<Notification>? notifications,
      @HiveField(18) String token});

  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = null,
    Object? email = null,
    Object? password = freezed,
    Object? emailVerified = null,
    Object? phone = freezed,
    Object? phoneVerified = null,
    Object? blocked = null,
    Object? isPremium = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? subscriptionId = freezed,
    Object? subscription = freezed,
    Object? todos = freezed,
    Object? comments = freezed,
    Object? notifications = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      todos: freezed == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? firstName,
      @HiveField(2) String? lastName,
      @HiveField(3) String username,
      @HiveField(4) String email,
      @HiveField(5) String? password,
      @HiveField(6) bool emailVerified,
      @HiveField(7) String? phone,
      @HiveField(8) bool phoneVerified,
      @HiveField(9) bool blocked,
      @HiveField(10) bool isPremium,
      @HiveField(11) DateTime createdAt,
      @HiveField(12) DateTime updatedAt,
      @HiveField(13) int? subscriptionId,
      @HiveField(14) Subscription? subscription,
      @HiveField(15) List<Todo>? todos,
      @HiveField(16) List<Comment>? comments,
      @HiveField(17) List<Notification>? notifications,
      @HiveField(18) String token});

  @override
  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = null,
    Object? email = null,
    Object? password = freezed,
    Object? emailVerified = null,
    Object? phone = freezed,
    Object? phoneVerified = null,
    Object? blocked = null,
    Object? isPremium = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? subscriptionId = freezed,
    Object? subscription = freezed,
    Object? todos = freezed,
    Object? comments = freezed,
    Object? notifications = freezed,
    Object? token = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) this.firstName,
      @HiveField(2) this.lastName,
      @HiveField(3) required this.username,
      @HiveField(4) required this.email,
      @HiveField(5) this.password,
      @HiveField(6) required this.emailVerified,
      @HiveField(7) this.phone,
      @HiveField(8) required this.phoneVerified,
      @HiveField(9) required this.blocked,
      @HiveField(10) required this.isPremium,
      @HiveField(11) required this.createdAt,
      @HiveField(12) required this.updatedAt,
      @HiveField(13) this.subscriptionId,
      @HiveField(14) this.subscription,
      @HiveField(15) final List<Todo>? todos,
      @HiveField(16) final List<Comment>? comments,
      @HiveField(17) final List<Notification>? notifications,
      @HiveField(18) required this.token})
      : _todos = todos,
        _comments = comments,
        _notifications = notifications;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String? firstName;
  @override
  @HiveField(2)
  final String? lastName;
  @override
  @HiveField(3)
  final String username;
  @override
  @HiveField(4)
  final String email;
  @override
  @HiveField(5)
  final String? password;
  @override
  @HiveField(6)
  final bool emailVerified;
  @override
  @HiveField(7)
  final String? phone;
  @override
  @HiveField(8)
  final bool phoneVerified;
  @override
  @HiveField(9)
  final bool blocked;
  @override
  @HiveField(10)
  final bool isPremium;
  @override
  @HiveField(11)
  final DateTime createdAt;
  @override
  @HiveField(12)
  final DateTime updatedAt;
  @override
  @HiveField(13)
  final int? subscriptionId;
  @override
  @HiveField(14)
  final Subscription? subscription;
  final List<Todo>? _todos;
  @override
  @HiveField(15)
  List<Todo>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Comment>? _comments;
  @override
  @HiveField(16)
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Notification>? _notifications;
  @override
  @HiveField(17)
  List<Notification>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(18)
  final String token;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, username: $username, email: $email, password: $password, emailVerified: $emailVerified, phone: $phone, phoneVerified: $phoneVerified, blocked: $blocked, isPremium: $isPremium, createdAt: $createdAt, updatedAt: $updatedAt, subscriptionId: $subscriptionId, subscription: $subscription, todos: $todos, comments: $comments, notifications: $notifications, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        username,
        email,
        password,
        emailVerified,
        phone,
        phoneVerified,
        blocked,
        isPremium,
        createdAt,
        updatedAt,
        subscriptionId,
        subscription,
        const DeepCollectionEquality().hash(_todos),
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_notifications),
        token
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@HiveField(0) required final int id,
      @HiveField(1) final String? firstName,
      @HiveField(2) final String? lastName,
      @HiveField(3) required final String username,
      @HiveField(4) required final String email,
      @HiveField(5) final String? password,
      @HiveField(6) required final bool emailVerified,
      @HiveField(7) final String? phone,
      @HiveField(8) required final bool phoneVerified,
      @HiveField(9) required final bool blocked,
      @HiveField(10) required final bool isPremium,
      @HiveField(11) required final DateTime createdAt,
      @HiveField(12) required final DateTime updatedAt,
      @HiveField(13) final int? subscriptionId,
      @HiveField(14) final Subscription? subscription,
      @HiveField(15) final List<Todo>? todos,
      @HiveField(16) final List<Comment>? comments,
      @HiveField(17) final List<Notification>? notifications,
      @HiveField(18) required final String token}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String? get firstName;
  @override
  @HiveField(2)
  String? get lastName;
  @override
  @HiveField(3)
  String get username;
  @override
  @HiveField(4)
  String get email;
  @override
  @HiveField(5)
  String? get password;
  @override
  @HiveField(6)
  bool get emailVerified;
  @override
  @HiveField(7)
  String? get phone;
  @override
  @HiveField(8)
  bool get phoneVerified;
  @override
  @HiveField(9)
  bool get blocked;
  @override
  @HiveField(10)
  bool get isPremium;
  @override
  @HiveField(11)
  DateTime get createdAt;
  @override
  @HiveField(12)
  DateTime get updatedAt;
  @override
  @HiveField(13)
  int? get subscriptionId;
  @override
  @HiveField(14)
  Subscription? get subscription;
  @override
  @HiveField(15)
  List<Todo>? get todos;
  @override
  @HiveField(16)
  List<Comment>? get comments;
  @override
  @HiveField(17)
  List<Notification>? get notifications;
  @override
  @HiveField(18)
  String get token;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
