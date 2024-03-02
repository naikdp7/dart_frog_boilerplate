import 'package:dart_frog_boilerplate/model/user_model.dart';
import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';
import 'package:dart_frog_boilerplate/request_handlers/base/base_request_handler.dart';
import 'package:dart_frog_boilerplate/request_handlers/base/base_request_param.dart';
import 'package:dart_frog_boilerplate/server_error/server_error.dart';
import 'package:dart_frog_boilerplate/server_error/server_error_code.dart';
import 'package:dart_frog_boilerplate/src/generated/prisma/prisma_client.dart';
import 'package:dart_frog_boilerplate/util/jwt_helper.dart';

class SignUpRequestHandler
    extends BaseRequestHandler<UserModel, SignUpRequestParam> {
  SignUpRequestHandler({
    required this.userRepository,
    required this.jwtHelper,
  });

  final UserRepository userRepository;
  final JWTHelper jwtHelper;

  @override
  Future<UserModel> handleRequest(SignUpRequestParam signUpRequestParam) async {
    User user = await userRepository.signup(
      email: signUpRequestParam.email,
      firstName: signUpRequestParam.firstName,
      lastName: signUpRequestParam.lastName,
      password: signUpRequestParam.password,
    );

    return UserModel(
      email: user.email,
      firstName: user.firstName,
      lastName: user.lastName,
      userId: user.userId,
      token: jwtHelper.createToken(
        user.userId,
      ),
    );
  }
}

class SignUpRequestParam extends BaseRequestParam<SignUpRequestParam> {
  final String email;
  final String firstName;
  final String lastName;
  final String password;

  SignUpRequestParam({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
  });

  @override
  bool validateRequestParam() {
    if (email.isEmpty) {
      throw InvalidRequestParamError(
        'Email is required',
        ServerErrorCode.InvalidParamEmail,
      );
    }
    if (firstName.isEmpty) {
      throw InvalidRequestParamError(
        'First name is required',
        ServerErrorCode.InvalidParamFirstName,
      );
    }
    if (lastName.isEmpty) {
      throw InvalidRequestParamError(
        'Last name is required',
        ServerErrorCode.InvalidParamLastName,
      );
    }
    if (password.isEmpty) {
      throw InvalidRequestParamError(
        'Password is required',
        ServerErrorCode.InvalidParamPassword,
      );
    }
    return true;
  }

  @override
  SignUpRequestParam fromMap(Map<String, dynamic> json) {
    return SignUpRequestParam(
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      password: json['password'],
    );
  }
}
