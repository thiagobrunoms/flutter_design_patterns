import 'package:flutter_design_patterns/design_patterns/bridge/datasources/i_datasources/i_crud_datasource.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/datasources/i_storages/i_remote_storage.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user_dto.dart';

class CRUDRemoteDatasource implements ICrudDataSource<User, UserDTO> {
  IRemoteStorage remoteStorage;

  CRUDRemoteDatasource(this.remoteStorage) {
    print('Init firebase');
  }

  @override
  Future<User> create(UserDTO data) async {
    return await remoteStorage.create(data);
  }

  @override
  Future<bool> delete(User data) {
    print('deleting from firebase');
    return Future.value(true);
  }

  @override
  Future<List<User>> read() {
    print('reading from firebase');
    return Future.value([User(id: 1, name: 'tahiago')]);
  }

  @override
  Future<void> update(User data) async {
    print('uptading at firebase');
  }
}
