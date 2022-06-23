import 'dart:convert';
import 'dart:io';

import 'package:restaurants_app/api/api_provider.dart';
import 'package:restaurants_app/data/model/model_item.dart';

class ListRestoRepositories {
  final ApiProvider _provider = ApiProvider();

  // * * Fetch List Item from api
  Future<ModelItemRes> getListResto() async {
    final response = await _provider.get(
      "list",
    );

    return ModelItemRes.fromJson(response);
  }
}
