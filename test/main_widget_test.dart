// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_template_code/features/domain/usecases/get_user_usecase.dart';
// import 'package:flutter_template_code/features/ui/bloc/user/user_bloc.dart';
// import 'package:flutter_template_code/features/ui/pages/screens/home.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
//
//
// void main() {
//   testWidgets("Show name person in widget text", (tester)
//   async{
//     await tester.pumpWidget(const HomePage());
//
//     final messageFinder = find.text('Demo User Bloc');
//     expect(messageFinder, findsOneWidget);
//   });
//   // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     // await tester.pumpWidget(const MyApp());
//     //
//     // // Verify that our counter starts at 0.
//     // expect(find.text('0'), findsOneWidget);
//     // expect(find.text('1'), findsNothing);
//     //
//     // // Tap the '+' icon and trigger a frame.
//     // await tester.tap(find.byIcon(Icons.add));
//     // await tester.pump();
//     //
//     // // Verify that our counter has incremented.
//     // expect(find.text('0'), findsNothing);
//     // expect(find.text('1'), findsOneWidget);
//   // });
// }
