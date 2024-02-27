import 'package:dart_frog_boilerplate/repository/user/user_repository.dart';

class AuthRequestHandler {
  AuthRequestHandler({
    required this.userRepository,
  });

  final UserRepository userRepository;

  Future<String> getUserName() {
    return userRepository.getUserName();
  }
}
