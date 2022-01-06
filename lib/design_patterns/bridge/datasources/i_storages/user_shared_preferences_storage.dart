import 'dart:async';
import 'dart:convert';

import 'package:flutter_design_patterns/design_patterns/bridge/datasources/i_storages/i_local_key_value_storage.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferencesStorage
    implements ILocalKeyValueStorage<String, User, UserDTO> {
  Completer? completer;

  UserSharedPreferencesStorage() {
    completer = Completer();
    completer?.complete(SharedPreferences.getInstance());
  }

  @override
  Future<User> create({String key = 'user', required UserDTO data}) async {
    SharedPreferences preferences = await completer?.future;
    preferences.setString(key, json.encode(data.toMap()));

    return User(id: 1, name: data.name);
  }

  @override
  Future<bool> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<User>> read(K, key) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> update(String key, User data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
