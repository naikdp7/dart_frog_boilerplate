import 'dart:async';

import 'package:dart_frog_boilerplate/src/generated/prisma/prisma_client.dart';

abstract class DbPort {
  Future<User> signup({
    required String email,
    required String firstName,
    required String lastName,
    required String password,
  });

  Future<User?> findUserById(String userIdFromToken);
}
