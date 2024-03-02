import 'dart:async';
import 'dart:math';

import 'package:dart_frog_boilerplate/db/db_port.dart';
import 'package:dart_frog_boilerplate/di/di_db.dart';
import 'package:dart_frog_boilerplate/src/generated/prisma/prisma_client.dart';

class PostgresAdapter extends DbPort {
  final PrismaClient prismaClient;

  PostgresAdapter({required this.prismaClient});

  @override
  Future<User> signup({
    required String email,
    required String firstName,
    required String lastName,
    required String password,
  }) {
    return providePrisma<User>((prisma) async {
      var user = await prisma.user.create(
        data: UserCreateInput(
          email: email,
          firstName: firstName,
          lastName: lastName,
          password: password,
          userId: "user-${Random().nextInt(100000)}",
        ),
      );
      return user;
    });
  }

  @override
  Future<User> findUserById(String userIdFromToken) {
    return providePrisma<User>((prisma) async {
      var user = await prisma.user.findFirst(
        where: UserWhereInput(
          userId: StringFilter(
            contains: userIdFromToken,
          ),
        ),
      );
      return user!;
    });
  }
}
