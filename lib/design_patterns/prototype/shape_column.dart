import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/shape.dart';

class ShapeColumn extends StatelessWidget {
  final Shape shape;
  final Shape? clonedShape;
  final Function() onClone;
  final Function() onRandom;

  const ShapeColumn(
      {required this.shape,
      required this.clonedShape,
      required this.onClone,
      required this.onRandom});

  @override
  Widget build(BuildContext context) {
    Widget cloned = clonedShape != null ? clonedShape!.render() : Container();

    return Column(
      children: [
        Row(
          children: [
            shape.render(),
            const SizedBox(
              width: 100,
            ),
            cloned,
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: onClone,
              child: const Text('Clone'),
            ),
            const SizedBox(
              width: 100,
            ),
            ElevatedButton(
              onPressed: onRandom,
              child: const Text('Randon'),
            ),
          ],
        )
      ],
    );
  }
}
