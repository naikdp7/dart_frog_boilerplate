import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/di/di_db.dart';
import 'package:dart_frog_boilerplate/di/di_repository.dart';
import 'package:dart_frog_boilerplate/di/di_request_handler.dart';

Handler middleware(Handler handler) {
  return handler
      .use(
        provideAuthRequestHandler(),
      )
      .use(
        provideUserRepository(),
      )
      .use(
        provideDbPort(),
      );
}
