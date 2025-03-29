
import 'package:app_02/my_widget_01/MyButton3.dart';
import 'package:app_02/my_widget_01/MyButton_2.dart';
import 'package:app_02/my_widget_01/MyColumnAndRow.dart';
import 'package:app_02/my_widget_01/MyContainer.dart';
import 'package:app_02/my_widget_01/MyGestures.dart';
//import 'package:app_02/MyTextField2.dart';
import 'package:app_02/my_widget_01/MyTextField2.dart';
import 'package:app_02/my_widgets_02_form/f1_form_basic.dart';
import 'package:flutter/material.dart';
import 'my_widget_01/MyScaffold.dart';
import 'my_widget_01/MyAppBar.dart';
import 'my_widget_01/MyText.dart';

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
      home:  FormBasicDemo(),
    );
  }
}

