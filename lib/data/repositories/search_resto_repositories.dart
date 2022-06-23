import 'package:restaurants_app/api/api_provider.dart';
import 'package:restaurants_app/data/model/search_resto_model.dart';

class SearchRestoRepositories {
  final ApiProvider _provider = ApiProvider();

  // * * Fetch Search Resto from api
  Future<SearchRestoRes> getSearchResto(String query) async {
    final response = await _provider.get(
      "search?q=${query}",
    );

    return SearchRestoRes.fromJson(response);
  }
}
