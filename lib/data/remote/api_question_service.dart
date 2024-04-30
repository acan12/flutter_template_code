import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'api_config.dart';
import 'response/user/user_response.dart';

part 'api_question_service.g.dart';

@RestApi(baseUrl: ApiConfig.domainHostQuestion)
abstract class ApiQuestionService {
  factory ApiQuestionService(Dio dio, {String baseUrl }) = _ApiQuestionService;

  @GET(ApiConfig.questions)
  Future<UserResponse> getPersona();
}