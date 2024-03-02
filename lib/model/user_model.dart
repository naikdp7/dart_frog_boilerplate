import 'package:dart_frog_boilerplate/model/base_model.dart';

class UserModel extends BaseModel<UserModel> {
  final String firstName;
  final String lastName;
  final String email;
  late String token;
  final String userId;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.userId,
    this.token = '',
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'userId': userId,
      'token': token,
    };
  }

  @override
  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      userId: json['userId'],
      token: json['token'],
    );
  }
}
