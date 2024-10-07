import 'package:flutter/material.dart';

import '../bloc/user/user_bloc.dart';
import 'profile_widget.dart';

Widget showProfileView(UserState state) {
  return state.when(
    initial: () => const Text("Initial"),
    loading: () => const Center(child: CircularProgressIndicator()),
    loaded: (user) =>
        ShowProfileWidget(fullName: user.fullName, email: user.email),
    error: (errorMessage) => Text(errorMessage.toString()),
  );
}
