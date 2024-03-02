import 'dart:convert';
import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/request_executor/request_executor.dart';
import 'package:dart_frog_boilerplate/request_handlers/signup_request_handler.dart';

Future<Response> onRequest(RequestContext context) async {
  Map<String, dynamic> requestBody = jsonDecode(
    await context.request.body(),
  );
  final RequestExecutor requestExecutor = RequestExecutor(
    requestHandler: context.read<SignUpRequestHandler>(),
    requestParam: SignUpRequestParam(
      email: requestBody['email'],
      firstName: requestBody['firstName'],
      lastName: requestBody['lastName'],
      password: requestBody['password'],
    ),
    requestContext: context,
  );

  return requestExecutor.execute(
    shouldCheckForToken: false,
  );
}
