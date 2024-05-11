import 'package:flutter_template_code/features/data/provider/user_provider_impl.dart';
import 'package:flutter_template_code/features/domain/repo/user_repository.dart';
import 'package:flutter_template_code/features/domain/repo/user_repository_impl.dart';
import 'package:flutter_template_code/features/domain/usecases/get_user_usecase.dart';
import 'package:flutter_template_code/features/ui/bloc/user/user_bloc.dart';
import 'package:get_it/get_it.dart';

import '../features/data/provider/user_provider.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<UserProvider>(UserProviderImpl());
  sl.registerSingleton<UserRepository>(UserRepositoryImpl(sl()));
  sl.registerSingleton<GetUserUseCase>(GetUserUseCase(sl()));

  sl.registerFactory<UserBloc>(() => UserBloc(sl()));
}
