import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/cupertino_factory.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/main_page.dart';
import 'dart:io' show Platform;

import 'package:flutter_design_patterns/design_patterns/abstract_factory/material_factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AbstractFactoryMainPage(
            widgetFactory:
                Platform.isAndroid ? MaterialFactory() : CupertinoFactory()));
  }
}
