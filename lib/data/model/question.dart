import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@Freezed()
class Question with _$Question {
  const factory Question({
    required String question,
    @JsonKey(name: "published_at") required String publishedAt,
    required String answer,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}