import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/cupertino_factory.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/main_page.dart';
import 'dart:io' show Platform;

import 'package:flutter_design_patterns/design_patterns/abstract_factory/material_factory.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/view/gps_position_page.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/page/products_list_page.dart';
import 'package:flutter_design_patterns/design_patterns/memento/view/shapes_page_view.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/prototype_page.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/video_page.dart';
import 'package:flutter_design_patterns/design_patterns/state/page/state_page.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/page/employee_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            const StatePage() //const MementoShapePageView(), //const PrototypePage(), //MementoShapePageView() //const ProductListPage(),
        ); //const GPSPositionPage()); //const VideoServicePage());
    // home: AbstractFactoryMainPage(
    //     widgetFactory:
    //         Platform.isAndroid ? MaterialFactory() : CupertinoFactory()));
  }
}
