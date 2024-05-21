import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

abstract class UserRepository {
  Future<UserResponse> getUser();
}
