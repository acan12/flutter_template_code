import 'package:flutter_template_code/features/data/remote/provider/user_provider.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

import 'base_repository.dart';

abstract class UserRepository {
  Future<UserResponse> getUser();
}