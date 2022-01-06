import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_widgets_factory.dart';

class AbstractFactoryMainPage extends StatefulWidget {
  IWidgetFactory widgetFactory;

  AbstractFactoryMainPage({Key? key, required this.widgetFactory})
      : super(key: key);

  @override
  _AbstractFactoryMainPageState createState() =>
      _AbstractFactoryMainPageState();
}

class _AbstractFactoryMainPageState extends State<AbstractFactoryMainPage> {
  bool isSending = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Design Pattern'),
        ),
        body: Center(
            child: isSending
                ? widget.widgetFactory.createProgressIndicator().build()
                : widget.widgetFactory
                    .createButton('Enviar', callback)
                    .build()));
  }

  void callback() {
    setState(() {
      isSending = true;
    });

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isSending = false;
      });
    });
  }
}
