import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';
import 'package:dart_frog_boilerplate/request_handlers/base/base_request_handler.dart';
import 'package:dart_frog_boilerplate/request_handlers/base/base_request_param.dart';
import 'package:dart_frog_boilerplate/server_error/server_error.dart';
import 'package:dart_frog_boilerplate/server_error/server_error_code.dart';
import 'package:dart_frog_boilerplate/src/generated/prisma/prisma_client.dart';
import 'package:dart_frog_boilerplate/util/jwt_helper.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class RequestExecutor {
  final BaseRequestHandler requestHandler;
  final BaseRequestParam requestParam;
  final RequestContext requestContext;

  RequestExecutor({
    required this.requestHandler,
    required this.requestParam,
    required this.requestContext,
  });

  Future<Response> execute({
    bool shouldCheckForToken = true,
  }) async {
    try {
      Map<String, dynamic> requestBody = jsonDecode(
        await requestContext.request.body(),
      );

      ///Validate headers
      String token = requestContext.request.headers['Authorization'] ?? '';
      if (shouldCheckForToken && (token.isEmpty)) {
        throw InvalidTokenError(
          'Invalid or Missing Token',
          ServerErrorCode.InvalidToken,
        );
      }
      JWTHelper jwtHelper = requestContext.read<JWTHelper>();
      if (shouldCheckForToken && !jwtHelper.verifyToken(token)) {
        throw InvalidTokenError(
          'Token Expired',
          ServerErrorCode.MissingToken,
        );
      }

      if (shouldCheckForToken) {
        UserRepository userRepository = requestContext.read<UserRepository>();

        User? user = await userRepository.findUserById(
          jwtHelper.getUserIdFromToken(token),
        );
        if (user == null) {
          throw InvalidTokenError(
            'Invalid or Missing Token User not found',
            ServerErrorCode.InvalidToken,
          );
        }
      }

      ///validate request param
      bool isValidRequestParam =
          requestParam.fromMap(requestBody).validateRequestParam();
      if (isValidRequestParam) {
        final response = await requestHandler.handleRequest(requestParam);
        return Response(
          body: jsonEncode(response.toJson()),
          statusCode: 200,
        );
      } else {
        return Response(
          body: jsonEncode({"error": "Invalid request param"}),
          statusCode: 400,
        );
      }
    } on JWTException catch (e) {
      return Response(
        body: jsonEncode(
          {
            "errorCode": ServerErrorCode.InvalidToken.toString(),
            "errorMessage": "${e.message}",
          },
        ),
        statusCode: 400,
      );
    } on ServerError catch (e) {
      print("e is ${e.toString()}");
      return Response(
        body: jsonEncode(
          {
            "error": e.toString(),
            "errorCode": e.serverErrorCode.toString(),
            "errorMessage": e.message,
          },
        ),
        statusCode: 400,
      );
    }
  }
}
