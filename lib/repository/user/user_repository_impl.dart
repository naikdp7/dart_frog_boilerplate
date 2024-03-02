import 'dart:async';

import 'package:dart_frog_boilerplate/db/db_port.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';
import 'package:dart_frog_boilerplate/src/generated/prisma/prisma_client.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({required this.dbPort});

  final DbPort dbPort;

  @override
  Future<User> signup({
    required String email,
    required String firstName,
    required String lastName,
    required String password,
  }) {
    return dbPort.signup(
      email: email,
      firstName: firstName,
      lastName: lastName,
      password: password,
    );
  }

  @override
  Future<User?> findUserById(String userIdFromToken) {
    return dbPort.findUserById(userIdFromToken);
  }
}
