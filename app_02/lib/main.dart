import 'package:app_02/MyButton.dart';
import 'package:app_02/MyColumnAndRow.dart';
import 'package:app_02/MyContainer.dart';
import 'package:flutter/material.dart';
import 'MyScaffold.dart';
import 'MyAppBar.dart';
import 'MyText.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyButton(),
    );
  }
}

