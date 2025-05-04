import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sala/core/models/comment_model.dart';
import 'package:sala/core/models/notification_model.dart';
import 'package:sala/core/models/subscription_model.dart';
import 'package:sala/core/models/todo_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 0)
class User with _$User {
  factory User({
    @HiveField(0) required int id,
    @HiveField(1) String? firstName,
    @HiveField(2) String? lastName,
    @HiveField(3) required String username,
    @HiveField(4) required String email,
    @HiveField(5) String? password,
    @HiveField(6) required bool emailVerified,
    @HiveField(7) String? phone,
    @HiveField(8) required bool phoneVerified,
    @HiveField(9) required bool blocked,
    @HiveField(10) required bool isPremium,
    @HiveField(11) required DateTime createdAt,
    @HiveField(12) required DateTime updatedAt,
    @HiveField(13) int? subscriptionId,
    @HiveField(14) Subscription? subscription,
    @HiveField(15) List<Todo>? todos,
    @HiveField(16) List<Comment>? comments,
    @HiveField(17) List<Notification>? notifications,
    @HiveField(18) required String token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
