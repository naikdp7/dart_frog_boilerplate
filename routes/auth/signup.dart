import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/request_handlers/auth_request_handler.dart';

Future<Response> onRequest(RequestContext context) async {
  final authRequestHandler = context.read<AuthRequestHandler>();
  final userName = await authRequestHandler.getUserName();
  return Response(
    body: userName,
  );
}
