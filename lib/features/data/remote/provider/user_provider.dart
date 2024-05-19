import '../response/user/user_response.dart';

abstract class UserProvider {
  Future<UserResponse> getUsers();
}