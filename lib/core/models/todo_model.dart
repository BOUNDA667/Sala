import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sala/core/models/comment_model.dart';
import 'package:sala/core/models/tag_model.dart';
import 'package:sala/core/models/user_model.dart';
import 'package:sala/core/utils/utils.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@HiveType(typeId: 2)
enum Priority {
  @HiveField(0)
  LOW,
  @HiveField(1)
  MEDIUM,
  @HiveField(2)
  HIGH,
}

@freezed
@HiveType(typeId: 3)
class Todo with _$Todo {
  factory Todo({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) String? description,
    @HiveField(3) required bool completed,
    @HiveField(4) required Priority priority,
    @HiveField(5) DateTime? dueDate,
    @HiveField(6) DateTime? reminderDate,
    @HiveField(7) required DateTime createdAt,
    @HiveField(8) required DateTime updatedAt,
    @HiveField(9) required int userId,
    @HiveField(10) User? user,
    @HiveField(11) List<Tag>? tags,
    @HiveField(12) List<Comment>? comments,
    @HiveField(13) bool? repeatAfterCompletion, // Pour gérer la récurrence
    @JsonKey(fromJson: Utils.timeOfDayFromJson, toJson: Utils.timeOfDayToJson)
    @HiveField(14)
    TimeOfDay? dueTime,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

extension PriorityExtension on Priority {
  String get label {
    switch (this) {
      case Priority.HIGH:
        return 'High';
      case Priority.MEDIUM:
        return 'Medium';
      case Priority.LOW:
        return 'Low';
    }
  }
}
