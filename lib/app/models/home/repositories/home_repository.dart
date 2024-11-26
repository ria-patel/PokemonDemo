// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/home/home_dto.dart';
import 'package:pokemon_demo/app/models/response.dart';
import 'package:pokemon_demo/app_utils/constants/api_constants.dart';
import 'package:pokemon_demo/app_utils/helpers/exception_handler.dart';
import 'package:pokemon_demo/app_utils/services/api_service.dart';

class HomeRepository {
  Future<RepoResponse<HomeDto>> getHomeData({
    required int page,
    required int pageSize,
    String name = '',
  }) async {
    Map<String, dynamic> queryParam = {
      "page": page,
      "pageSize": pageSize,
    };

    if (name.isNotEmpty) {
      queryParam.addAll({'q': 'set.name:$name'});
    }

    final response = await ApiService.shared.get(
      path: ApiConstants.cards,
      query: queryParam,
    );

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: HomeDto.fromJson(response));
  }
}
