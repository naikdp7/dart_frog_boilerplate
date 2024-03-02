import 'package:dart_frog_boilerplate/model/base_model.dart';
import 'package:dart_frog_boilerplate/request_handlers/base/base_request_param.dart';

abstract class BaseRequestHandler<T extends BaseModel,
    P extends BaseRequestParam> {
  Future<T> handleRequest(P requestParam);
}
