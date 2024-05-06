import 'package:dio/dio.dart';
import 'package:flutter_template_code/features/data/provider/user_provider_impl.dart';
import 'package:flutter_template_code/features/data/remote/api_portfolio_service.dart';
import 'package:flutter_template_code/features/data/remote/api_question_service.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

class UserProvider implements UserProviderImpl{
  final clientUser = ApiPortfolioService(Dio(BaseOptions(contentType: "application/json")));
  final clientQuestion = ApiQuestionService(Dio(BaseOptions(contentType: "application/json")));

  @override
  Future<UserResponse> getUsers() async => clientUser.getPersona();
}