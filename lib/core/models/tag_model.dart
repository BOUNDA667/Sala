import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sala/core/models/todo_model.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
@HiveType(typeId: 4)
class Tag with _$Tag {
  factory Tag({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) List<Todo>? todos,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
