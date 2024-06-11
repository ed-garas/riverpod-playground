import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const User._();

  const factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String surname,
    @HiveField(3) required String email,
    @HiveField(4) required String avatar,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
