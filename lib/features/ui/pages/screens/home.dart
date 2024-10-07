import 'package:coconut/ui/base_statefull_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_code/features/ui/widgets/user_profile_view.dart';

import '../../../../config/injection.dart';
import '../../bloc/user/user_bloc.dart';

class HomePage extends BaseStatefullWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
            create: (context) => sl()..add(const UserEvent.fetchUser()))
      ],
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Demo User Bloc"),
            ),
            body: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
              return showProfileView(state);
            })),
      ),
    );
  }
}

String reversedString(String initial) {
  return initial.split('').reversed.join();
}
