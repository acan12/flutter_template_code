import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';
import 'package:flutter_template_code/features/domain/usecases/base_usecase.dart';

import '../repo/user_repository.dart';

class GetUserUseCase implements BaseUseCase<UserResponse, void> {
  final UserRepository _userRepository;

  GetUserUseCase.name(this._userRepository);

  @override
  Future<UserResponse> call({void params}) {
    return _userRepository.getUser();
  }
}
