import 'package:flutter_template_code/data/provider/user_provider.dart';
import 'package:flutter_template_code/data/remote/response/user/user_response.dart';
import 'package:flutter_template_code/repo/base_repository.dart';

class UserRepository extends BaseRepository {
  final userProvider = UserProvider();

  Future<UserResponse> getUser() => userProvider.getUsers();
}