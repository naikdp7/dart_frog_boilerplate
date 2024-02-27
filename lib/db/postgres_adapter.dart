import 'dart:async';

import 'package:dart_frog_boilerplate/db/db_port.dart';
import 'package:dart_frog_boilerplate/di/di_db.dart';
import 'package:dart_frog_boilerplate/src/generated/prisma_client/prisma_client.dart';

class PostgresAdapter extends DbPort {
  final PrismaClient prismaClient;

  PostgresAdapter({required this.prismaClient});

  Future<String> getUserName() async {
    return providePrisma<String>((prisma) async {
      print("prisma client is ${prisma.user.toString()}");
      var user = await prisma.user
          .create(data: UserCreateInput(email: 'abc.com', name: 'abc'));
      return user.name ?? '';
    });
  }
}
