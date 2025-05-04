// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get completed => throw _privateConstructorUsedError;
  @HiveField(4)
  Priority get priority => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime? get reminderDate => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @HiveField(9)
  int get userId => throw _privateConstructorUsedError;
  @HiveField(10)
  User? get user => throw _privateConstructorUsedError;
  @HiveField(11)
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @HiveField(12)
  List<Comment>? get comments => throw _privateConstructorUsedError;
  @HiveField(13)
  bool? get repeatAfterCompletion =>
      throw _privateConstructorUsedError; // Pour gérer la récurrence
  @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
  @HiveField(14)
  TimeOfDay? get dueTime => throw _privateConstructorUsedError;

  /// Serializes this Todo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) String? description,
      @HiveField(3) bool completed,
      @HiveField(4) Priority priority,
      @HiveField(5) DateTime? dueDate,
      @HiveField(6) DateTime? reminderDate,
      @HiveField(7) DateTime createdAt,
      @HiveField(8) DateTime updatedAt,
      @HiveField(9) int userId,
      @HiveField(10) User? user,
      @HiveField(11) List<Tag>? tags,
      @HiveField(12) List<Comment>? comments,
      @HiveField(13) bool? repeatAfterCompletion,
      @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
      @HiveField(14)
      TimeOfDay? dueTime});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? completed = null,
    Object? priority = null,
    Object? dueDate = freezed,
    Object? reminderDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? user = freezed,
    Object? tags = freezed,
    Object? comments = freezed,
    Object? repeatAfterCompletion = freezed,
    Object? dueTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderDate: freezed == reminderDate
          ? _value.reminderDate
          : reminderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      repeatAfterCompletion: freezed == repeatAfterCompletion
          ? _value.repeatAfterCompletion
          : repeatAfterCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      dueTime: freezed == dueTime
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ) as $Val);
  }

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodoImplCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$TodoImplCopyWith(
          _$TodoImpl value, $Res Function(_$TodoImpl) then) =
      __$$TodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) String? description,
      @HiveField(3) bool completed,
      @HiveField(4) Priority priority,
      @HiveField(5) DateTime? dueDate,
      @HiveField(6) DateTime? reminderDate,
      @HiveField(7) DateTime createdAt,
      @HiveField(8) DateTime updatedAt,
      @HiveField(9) int userId,
      @HiveField(10) User? user,
      @HiveField(11) List<Tag>? tags,
      @HiveField(12) List<Comment>? comments,
      @HiveField(13) bool? repeatAfterCompletion,
      @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
      @HiveField(14)
      TimeOfDay? dueTime});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TodoImplCopyWithImpl<$Res>
    extends _$TodoCopyWithImpl<$Res, _$TodoImpl>
    implements _$$TodoImplCopyWith<$Res> {
  __$$TodoImplCopyWithImpl(_$TodoImpl _value, $Res Function(_$TodoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? completed = null,
    Object? priority = null,
    Object? dueDate = freezed,
    Object? reminderDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? user = freezed,
    Object? tags = freezed,
    Object? comments = freezed,
    Object? repeatAfterCompletion = freezed,
    Object? dueTime = freezed,
  }) {
    return _then(_$TodoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderDate: freezed == reminderDate
          ? _value.reminderDate
          : reminderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      repeatAfterCompletion: freezed == repeatAfterCompletion
          ? _value.repeatAfterCompletion
          : repeatAfterCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      dueTime: freezed == dueTime
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoImpl implements _Todo {
  _$TodoImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) this.description,
      @HiveField(3) required this.completed,
      @HiveField(4) required this.priority,
      @HiveField(5) this.dueDate,
      @HiveField(6) this.reminderDate,
      @HiveField(7) required this.createdAt,
      @HiveField(8) required this.updatedAt,
      @HiveField(9) required this.userId,
      @HiveField(10) this.user,
      @HiveField(11) final List<Tag>? tags,
      @HiveField(12) final List<Comment>? comments,
      @HiveField(13) this.repeatAfterCompletion,
      @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
      @HiveField(14)
      this.dueTime})
      : _tags = tags,
        _comments = comments;

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final bool completed;
  @override
  @HiveField(4)
  final Priority priority;
  @override
  @HiveField(5)
  final DateTime? dueDate;
  @override
  @HiveField(6)
  final DateTime? reminderDate;
  @override
  @HiveField(7)
  final DateTime createdAt;
  @override
  @HiveField(8)
  final DateTime updatedAt;
  @override
  @HiveField(9)
  final int userId;
  @override
  @HiveField(10)
  final User? user;
  final List<Tag>? _tags;
  @override
  @HiveField(11)
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Comment>? _comments;
  @override
  @HiveField(12)
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(13)
  final bool? repeatAfterCompletion;
// Pour gérer la récurrence
  @override
  @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
  @HiveField(14)
  final TimeOfDay? dueTime;

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, description: $description, completed: $completed, priority: $priority, dueDate: $dueDate, reminderDate: $reminderDate, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, user: $user, tags: $tags, comments: $comments, repeatAfterCompletion: $repeatAfterCompletion, dueTime: $dueTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.reminderDate, reminderDate) ||
                other.reminderDate == reminderDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.repeatAfterCompletion, repeatAfterCompletion) ||
                other.repeatAfterCompletion == repeatAfterCompletion) &&
            (identical(other.dueTime, dueTime) || other.dueTime == dueTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      completed,
      priority,
      dueDate,
      reminderDate,
      createdAt,
      updatedAt,
      userId,
      user,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_comments),
      repeatAfterCompletion,
      dueTime);

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      __$$TodoImplCopyWithImpl<_$TodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoImplToJson(
      this,
    );
  }
}

abstract class _Todo implements Todo {
  factory _Todo(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String title,
      @HiveField(2) final String? description,
      @HiveField(3) required final bool completed,
      @HiveField(4) required final Priority priority,
      @HiveField(5) final DateTime? dueDate,
      @HiveField(6) final DateTime? reminderDate,
      @HiveField(7) required final DateTime createdAt,
      @HiveField(8) required final DateTime updatedAt,
      @HiveField(9) required final int userId,
      @HiveField(10) final User? user,
      @HiveField(11) final List<Tag>? tags,
      @HiveField(12) final List<Comment>? comments,
      @HiveField(13) final bool? repeatAfterCompletion,
      @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
      @HiveField(14)
      final TimeOfDay? dueTime}) = _$TodoImpl;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  bool get completed;
  @override
  @HiveField(4)
  Priority get priority;
  @override
  @HiveField(5)
  DateTime? get dueDate;
  @override
  @HiveField(6)
  DateTime? get reminderDate;
  @override
  @HiveField(7)
  DateTime get createdAt;
  @override
  @HiveField(8)
  DateTime get updatedAt;
  @override
  @HiveField(9)
  int get userId;
  @override
  @HiveField(10)
  User? get user;
  @override
  @HiveField(11)
  List<Tag>? get tags;
  @override
  @HiveField(12)
  List<Comment>? get comments;
  @override
  @HiveField(13)
  bool? get repeatAfterCompletion; // Pour gérer la récurrence
  @override
  @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
  @HiveField(14)
  TimeOfDay? get dueTime;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
