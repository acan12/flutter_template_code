import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repo/user_repository.dart';
import '../bloc/user/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc(userRepo: UserRepository()))
      ],
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Demo User Bloc"),
            ),
            body: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                switch (state) {
                  case UserInitial():
                  case UserLoading():
                    return const Center(child: CircularProgressIndicator());
                  case UserLoaded():
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            'Testing',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    );
                  case UserError():
                  // TODO: Handle this case.
                  default:
                    return const Text("Default");
                }
              },
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
}
