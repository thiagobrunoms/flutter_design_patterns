import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final Function()? callback;

  const LoginButtonWidget(this.title, {Key? key, this.color, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ElevatedButton(
        onPressed: callback,
        child: Text(title),
        style: ElevatedButton.styleFrom(
          primary: color,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
