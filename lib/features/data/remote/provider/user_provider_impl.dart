import 'package:dio/dio.dart';
import 'package:flutter_template_code/features/data/remote/provider/user_provider.dart';
import 'package:flutter_template_code/features/data/remote/api_portfolio_service.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

class UserProviderImpl implements UserProvider {
  final clientUser =
      ApiPortfolioService(Dio(BaseOptions(contentType: "application/json")));

  @override
  Future<UserResponse> getUsers() async => clientUser.getPersona();
}
