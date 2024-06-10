import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';
import 'package:flutter_template_code/features/domain/usecases/get_user_usecase.dart';
import 'package:flutter_template_code/features/ui/bloc/user/user_bloc.dart';
import 'package:flutter_template_code/features/ui/pages/screens/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'reversed_string_unit_test.mocks.dart';

@GenerateMocks([GetUserUseCase])
void main() {
  group('get user bloc test', () {
    late UserBloc userBloc;
    final usecase = MockGetUserUseCase();
    const userResponse =
        UserResponse(id: 1, fullName: "tester", email: "tester@lib.com");

    setUp(() {
      when(usecase.call()).thenAnswer((_) => Future(() => userResponse));
    });

    test('initial setup', () {
      expect(UserBloc(usecase).state.runtimeType.toString(), "UserInitial");
    });

    // blocTest<UserBloc, UserState>(
    //   'get user data',
    //   build: () => UserBloc(usecase),
    //   act: (bloc) async {
    //     bloc.add(FetchUser());
    //   },
    //   expect: () => <UserState>[UserLoading(), UserLoaded(userResponse)],
    // );

    test("String should be reversed", () {
      String initial = "Hello";
      String reversed = reversedString(initial);
      expect(reversed, "olleH");
    });
  });


}
