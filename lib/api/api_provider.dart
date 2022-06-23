import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:restaurants_app/api/api_exception.dart';

class ApiProvider {
  final String _defaultBaseUrl = "https://restaurant-api.dicoding.dev/";

  String get _baseUrl => _defaultBaseUrl;

  Future<dynamic> get(dynamic url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(_defaultBaseUrl + url));

      print('dia masuk belum ya' + response.body);

      responseJson = _returnResponse(response);
    } on SocketException {
      throw NetworkException('Tidak ada koneksi internet');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    var responseJson = json.decode(response.body);
    final error = responseJson['message'] ?? 'Terjadi kesalahan';
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 201:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        Map<String, dynamic> responseJson = json.decode(response.body);
        throw responseJson["apiAccount_Response"] == null
            ? responseJson["createTicketResponse"]["eaiStatus"]
                ["srcResponseMsg"]
            : responseJson["apiAccount_Response"]["eaiStatus"]
                ["srcResponseMsg"];
      case 401:
        throw error;
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        throw ServerException(error);
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
