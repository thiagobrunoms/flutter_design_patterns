import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/i_shape.dart';

class UserCardWidget extends StatelessWidget {
  final User user;
  final IShape? subtitleSymbol;
  const UserCardWidget({Key? key, required this.user, this.subtitleSymbol})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListTile(
          title: Text(user.name),
          subtitle: subtitleSymbol?.render(),
        ),
      ),
    );
  }
}
