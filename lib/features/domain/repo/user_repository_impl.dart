import 'package:coconut/domain/base_repository.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

import '../../data/remote/provider/user_provider.dart';
import 'user_repository.dart';

class UserRepositoryImpl extends BaseRepository implements UserRepository {
  final UserProvider _userProvider;

  UserRepositoryImpl(this._userProvider);

  @override
  Future<UserResponse> getUser() => _userProvider.getUsers();
}
