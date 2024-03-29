import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/db/db_port.dart';
import 'package:dart_frog_boilerplate/db/postgres_adapter.dart';
import 'package:dart_frog_boilerplate/server_error/server_error.dart';
import 'package:dart_frog_boilerplate/server_error/server_error_code.dart';
import 'package:dart_frog_boilerplate/src/generated/prisma/prisma_client.dart';
import 'package:orm/orm.dart';

Middleware provideDbPort() {
  return provider<DbPort>(
    (context) => PostgresAdapter(
      prismaClient: _client,
    ),
  );
}

final _client = PrismaClient(
  datasources: Datasources(),
);

Future<T> providePrisma<T>(Future<T> Function(PrismaClient prisma) main) async {
  try {
    _client.$connect();
    return await main(_client);
  } on PrismaRequestException catch (exception) {
    throw ServerError(
      exception.message,
      ServerErrorCode.DatabaseError,
    );
  } finally {
    await _client.$disconnect();
  }
}
