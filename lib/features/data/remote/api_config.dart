import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';

sealed class ApiConfig {
  static const domainApiHost = "https://private-f66ab-myportfolio6.apiary-mock.com/";
  static const persona = "personal";

  static const domainHostQuestion =
      "https://private-07584e-members16.apiary-mock.com/";
  static const questions = "questions";

  static Dio getDio() =>
    Dio(BaseOptions(contentType: "application/json",
    ))..interceptors.add(ChuckerDioInterceptor());
}