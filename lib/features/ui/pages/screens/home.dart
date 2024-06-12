import 'package:coconut/ui/base_statefull_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/injection.dart';
import '../../bloc/user/user_bloc.dart';
import '../../widgets/show_profile_widget.dart';

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
              state.when(
                initial: () => {''},
                loading: () =>
                    {const Center(child: CircularProgressIndicator())},
                loaded: (user) => {
                  ShowProfileWidget(fullName: user.fullName, email: user.email)
                },
                error: (errorMessage) => {print(errorMessage.toString())},
              );
              return const Text("Default");
            }
                // switch (state) {
                //   case initial:
                //   case UserLoading():
                //     return const Center(child: CircularProgressIndicator());
                //   case UserLoaded():
                //     final user = state.user;
                //     return ShowProfileWidget(
                //         fullName: user.fullName, email: user.email);
                //   case UserError():
                //     return const Text("Something wrong in your app");
                //
                //   default:
                //     return const Text("Default");
                // }

                )),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Demo User Bloc"),
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         const Text(
    //           'You have pushed the button this many times:',
    //         ),
    //         Text(
    //           'Testing',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  @override
  void onSuccess() {
    // TODO: implement onSuccess
  }

  @override
  void onError() {
    // TODO: implement onError
  }

  @override
  void onLoading() {
    // TODO: implement onLoading
  }
}

String reversedString(String initial) {
  return initial.split('').reversed.join();
}
