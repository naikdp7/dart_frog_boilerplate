import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/db/db_port.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository_impl.dart';

Middleware provideUserRepository() {
  return provider<UserRepository>(
    (context) => UserRepositoryImpl(
      dbPort: context.read<DbPort>(),
    ),
  );
}
