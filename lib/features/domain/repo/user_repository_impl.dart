import 'package:flutter_template_code/features/data/provider/user_provider_impl.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

import '../../data/provider/user_provider.dart';
import 'base_repository.dart';
import 'user_repository.dart';

class UserRepositoryImpl extends BaseRepository implements UserRepository {
  final UserProvider _userProvider;

  UserRepositoryImpl(this._userProvider);

  @override
  Future<UserResponse> getUser() => _userProvider.getUsers();
}
