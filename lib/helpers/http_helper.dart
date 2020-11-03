import 'dart:convert';

import 'package:http/http.dart' as http;

enum HttpType {
  get,
  put,
  post,
  delete,
}

class HttpHelper {
  HttpHelper._privateConstructor();

  static final HttpHelper _instance = HttpHelper._privateConstructor();

  static HttpHelper get instance => _instance;

  Future<List<dynamic>> request(String fullUrl, HttpType type) async {
    http.Response response;
    if (type == HttpType.get) {
      try {
        response = await http.get(fullUrl);
      }catch(error){
        print(error);
      }
    }
    if (response != null && json.decode(response.body) != null) {
      return json.decode(response.body);
    }
    return List();
  }
}
