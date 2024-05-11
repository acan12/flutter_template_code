import 'package:flutter/cupertino.dart';

class ShowProfileWidget extends StatelessWidget {
  final String fullName;
  final String email;

  const ShowProfileWidget(
      {super.key, required this.fullName, required this.email});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("$fullName ($email) ",
              style: const TextStyle(fontWeight: FontWeight.bold)),
          const Text("Source : from API "),
        ],
      ),
    );
  }
}
