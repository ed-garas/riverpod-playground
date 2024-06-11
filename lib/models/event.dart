import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const Event._();
  const factory Event({
    required String id,
    required String title,
    required String description,
    required String datetime,
    required String location,
    required String createdAt,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);
}
