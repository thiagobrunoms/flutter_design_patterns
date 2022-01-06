import 'package:flutter_design_patterns/design_patterns/bridge/datasources/i_storages/i_remote_storage.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user_dto.dart';

class UserRemoteFirebaseStorage implements IRemoteStorage<User, UserDTO> {
  @override
  Future<User> create(UserDTO data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(User data) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<User>> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> update(User data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
