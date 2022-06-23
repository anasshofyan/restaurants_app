import 'dart:convert';
import 'dart:io';

import 'package:restaurants_app/api/api_provider.dart';
import 'package:restaurants_app/data/model/resto_detail_model.dart';

class DetailRestoRepositories {
  final ApiProvider _provider = ApiProvider();

  // * * Fetch Detail Resto from api
  Future<RestoDetailRes> getDetailResto(String id) async {
    final response = await _provider.get(
      "detail/${id}",
    );

    return RestoDetailRes.fromJson(response);
  }
}
