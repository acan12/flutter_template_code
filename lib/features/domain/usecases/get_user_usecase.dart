import 'package:coconut/domain/base_usecase.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';

import '../repo/user_repository.dart';

class GetUserUseCase implements BaseUseCase<UserResponse, void> {
  final UserRepository _userRepository;

  GetUserUseCase(this._userRepository);

  @override
  Future<UserResponse> call({void params}) {
    return _userRepository.getUser();
  }
}
