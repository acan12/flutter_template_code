import '../remote/response/user/user_response.dart';

abstract class UserProviderImpl {
  Future<UserResponse> getUsers();
}