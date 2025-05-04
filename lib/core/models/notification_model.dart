import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sala/core/models/user_model.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
@HiveType(typeId: 6)
class Notification with _$Notification {
  factory Notification({
    @HiveField(0) required int id,
    @HiveField(1) required String message,
    @HiveField(2) required bool read,
    @HiveField(3) required DateTime createdAt,
    @HiveField(4) required int userId,
    @HiveField(5) User? user,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
