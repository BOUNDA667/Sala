import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sala/core/models/user_model.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

@freezed
@HiveType(typeId: 1)
class Subscription with _$Subscription {
  factory Subscription({
    @HiveField(0) required int id,
    @HiveField(1) required String plan,
    @HiveField(2) required DateTime startDate,
    @HiveField(3) DateTime? endDate,
    @HiveField(4) List<User>? users,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}
