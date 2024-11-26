// Project imports:
import 'package:pokemon_demo/app_utils/helpers/exception_handler.dart';

class RepoResponse<T> {
  final APIException? error;
  final T? data;

  RepoResponse({this.error, this.data});
}
