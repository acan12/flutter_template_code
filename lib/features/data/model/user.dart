
import 'package:freezed_annotation/freezed_annotation.dart';

part "user.freezed.dart";
part "user.g.dart";

@Freezed()
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String fulLName,
    required int age,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}