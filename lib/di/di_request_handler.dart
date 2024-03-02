import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';
import 'package:dart_frog_boilerplate/request_handlers/signup_request_handler.dart';
import 'package:dart_frog_boilerplate/util/jwt_helper.dart';

Middleware provideJWTHandler() {
  return provider<JWTHelper>(
    (context) => JWTHelper(),
  );
}

Middleware provideAuthRequestHandler() {
  return provider<SignUpRequestHandler>(
    (context) => SignUpRequestHandler(
      userRepository: context.read<UserRepository>(),
      jwtHelper: context.read<JWTHelper>(),
    ),
  );
}
