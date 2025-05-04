import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sala/core/models/todo_model.dart';
import 'package:sala/core/models/user_model.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
@HiveType(typeId: 5)
class Comment with _$Comment {
  factory Comment({
    @HiveField(0) required int id,
    @HiveField(1) required String content,
    @HiveField(2) required DateTime createdAt,
    @HiveField(3) required int userId,
    @HiveField(4) User? user,
    @HiveField(5) required int todoId,
    @HiveField(6) Todo? todo,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
