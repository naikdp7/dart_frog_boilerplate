import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';
import 'package:dart_frog_boilerplate/request_handlers/auth_request_handler.dart';

Middleware provideAuthRequestHandler() {
  return provider<AuthRequestHandler>(
    (context) => AuthRequestHandler(
      userRepository: context.read<UserRepository>(),
    ),
  );
}
