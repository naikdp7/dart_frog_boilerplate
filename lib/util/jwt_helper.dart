import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class JWTHelper {
  String createToken(String userId) {
    final jwt = JWT(
      {
        'userId': userId,
      },
    );
    //TODO secret key should be stored in a secure place
    final token = jwt.sign(SecretKey('1234'));
    return token;
  }

  bool verifyToken(String token) {
    final jwt = JWT.verify(token, SecretKey('1234'));
    return jwt.payload != null;
  }

  String getUserIdFromToken(String token) {
    final jwt = JWT.verify(token, SecretKey('1234'));
    return jwt.payload['userId'];
  }
}
