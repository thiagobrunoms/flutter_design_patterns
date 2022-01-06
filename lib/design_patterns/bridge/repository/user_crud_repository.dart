import 'package:flutter_design_patterns/design_patterns/bridge/datasources/i_datasources/i_crud_datasource.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/models/user_dto.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/repository/i_crud_repository.dart';

class UserCrudRepository implements ICrudRepository<User, UserDTO> {
  ICrudDataSource datasource;

  UserCrudRepository(this.datasource);

  @override
  Future<User> create(UserDTO data) async {
    return await datasource.create(data);
  }

  @override
  Future<bool> delete(User data) async {
    return await datasource.delete(data);
  }

  @override
  Future<void> update(User data) async {
    await datasource.update(data);
  }

  @override
  Future<List<User>> read() async {
    return (await datasource.read()).whereType<User>().toList();
  }
}
