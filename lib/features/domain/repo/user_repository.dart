import 'package:flutter_template_code/features/data/provider/user_provider.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

import 'base_repository.dart';

class UserRepository extends BaseRepository {
  final userProvider = UserProvider();

  Future<UserResponse> getUser() => userProvider.getUsers();
}