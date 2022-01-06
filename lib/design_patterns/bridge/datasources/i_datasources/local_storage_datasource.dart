import 'dart:async';

import 'package:flutter_design_patterns/design_patterns/bridge/datasources/i_datasources/i_crud_datasource.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/datasources/i_storages/i_local_key_value_storage.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user_dto.dart';

import 'package:shared_preferences/shared_preferences.dart';

class CRUDLocalDatasource implements ICrudDataSource<User, UserDTO> {
  ILocalKeyValueStorage keyValueStorage;
  Completer? completer;

  CRUDLocalDatasource(this.keyValueStorage);

  @override
  Future<User> create(UserDTO data) async {
    print('creating at localstorage');
    return await keyValueStorage.create(
        key: 'user', data: UserDTO(name: 'tahiago'));

    // return Future.value(User(id: 1, name: 'tahiago'));
  }

  @override
  Future<bool> delete(User data) {
    print('deleting at localstorage');
    return Future.value(true);
  }

  @override
  Future<List<User>> read() {
    print('reading from localstorage');
    return Future.value([User(id: 1, name: 'tahiago')]);
  }

  @override
  Future<void> update(User data) async {
    print('updating at localstorage');
  }
}
