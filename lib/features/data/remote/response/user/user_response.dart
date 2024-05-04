import 'package:freezed_annotation/freezed_annotation.dart';

part "user_response.freezed.dart";
part "user_response.g.dart";

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    @JsonKey(name: "full_name") required String fullName,
    required String email,
    @Default(0) int age,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
