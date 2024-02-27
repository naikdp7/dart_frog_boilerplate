import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/db/db_port.dart';
import 'package:dart_frog_boilerplate/db/postgres_adapter.dart';
import 'package:dart_frog_boilerplate/src/generated/prisma_client/prisma_client.dart';

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

FutureOr<T> providePrisma<T>(
    FutureOr<T> Function(PrismaClient prisma) main) async {
  try {
    _client.$connect();
    return await main(_client);
  } finally {
    await _client.$disconnect();
  }
}
