abstract class BaseRequestParam<T> {
  bool validateRequestParam();
  T fromMap(Map<String, dynamic> json);
}
