import 'package:dart_frog_boilerplate/db/db_port.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({required this.dbPort});

  final DbPort dbPort;

  @override
  Future<String> getUserName() {
    return dbPort.getUserName();
  }
}
