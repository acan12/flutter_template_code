import 'package:flutter_template_code/features/data/provider/user_provider.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

import 'base_repository.dart';
import 'user_repository.dart';

class UserRepositoryImpl extends BaseRepository implements UserRepository {
  final userProvider = UserProvider();

  @override
  Future<UserResponse> getUser() => userProvider.getUsers();
}
