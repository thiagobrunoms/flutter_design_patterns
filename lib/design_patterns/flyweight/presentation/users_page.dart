import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/i_shape_flywight_factory.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/user_card.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/service.dart';

class UserList extends StatefulWidget {
  UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User>? userslist;
  Service service = Service();
  IShapeFlyweightFactory? flyweightFactory = IShapeFlyweightFactory();
  @override
  void initState() {
    super.initState();

    start();
  }

  void start() {
    userslist = service.loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flyweight'),
      ),
      body: ListView.builder(
        itemCount: userslist?.length,
        itemBuilder: (_, index) {
          return UserCardWidget(
              user: userslist![index],
              subtitleSymbol: flyweightFactory?.buildShape(userslist![index]));
        },
      ),
    );
  }
}
