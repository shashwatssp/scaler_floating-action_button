import 'package:flutter/material.dart';
import 'package:scaler_fab_demo/extended_floating_action_button.dart';
import 'package:scaler_fab_demo/mini_floating_action_button.dart';
import 'package:scaler_fab_demo/regular_floating_action_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extended FloatingActionButton',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExtendedFloatingActionButton(
          // title: 'We are using a Regular FloatingActionButton'),
          // title: 'We are using a Extended FloatingActionButton'),
          title: 'Extended FloatingActionButton'),
    );
  }
}
