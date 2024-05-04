import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'api_config.dart';
import 'response/user/user_response.dart';

part 'api_portfolio_service.g.dart';

@RestApi(baseUrl: ApiConfig.domainApiHost)
abstract class ApiPortfolioService {
  factory ApiPortfolioService(Dio dio, {String baseUrl }) = _ApiPortfolioService;

  @GET(ApiConfig.persona)
  Future<UserResponse> getPersona();
}