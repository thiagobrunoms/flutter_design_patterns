import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/circle.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/reactangle.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/shape.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/shape_column.dart';

class PrototypePage extends StatefulWidget {
  const PrototypePage({Key? key}) : super(key: key);

  @override
  _PrototypePageState createState() => _PrototypePageState();
}

class _PrototypePageState extends State<PrototypePage> {
  Shape circle = Circle(Colors.red, 50);
  Shape rectangle = Rectangle(Colors.blue, 50, 50);
  Shape? circleCloned;
  Shape? rectangleCloned;

  void onCloneCircle() {
    setState(() {
      circleCloned = circle.clone();
    });
  }

  void onRandomCircle() {
    setState(() {
      circle.randomProperties();
    });
  }

  void onCloneRectangle() {
    setState(() {
      rectangleCloned = rectangle.clone();
    });
  }

  void onRandomRectangle() {
    setState(() {
      rectangle.randomProperties();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prototype Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShapeColumn(
              shape: circle,
              clonedShape: circleCloned,
              onClone: onCloneCircle,
              onRandom: onRandomCircle,
            ),
            ShapeColumn(
              shape: rectangle,
              clonedShape: rectangleCloned,
              onClone: onCloneRectangle,
              onRandom: onRandomRectangle,
            ),
          ],
        ),
      ),
    );
  }
}
