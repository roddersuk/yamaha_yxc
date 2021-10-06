import 'dart:convert';

import '../constants.dart';
import 'package:http/http.dart' as http;

class Core {
  //Core(this.baseUrl);
  static late String baseUrl;
  static set base(url) => baseUrl = url;

  static Future<dynamic> call({
    required String section,
    required String function,
    Map<String, String?> parameters = const {},
    String version = 'v1',
  }) async {
    Map<String, String?> queryParameters = Map();
    parameters.forEach((key, value) {
      if (value != null) queryParameters[key] = value;
    });
    Uri uri = Uri(
      scheme: 'http',
      host: Uri.parse(baseUrl).host,
      port: kPort,
      pathSegments: ['YamahaExtendedControl', version, section, function],
      queryParameters: queryParameters,
    );
    // print('yxc: URI=${uri.toString()}');
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json['response_code'] != 0)
        throw Exception(
            "Request failed: ${kResponseCode[json['response_code']]}");
      return json;
    } else {
      throw Exception('Request error: ${response.statusCode}');
    }
  }

  static String? toStringOrNull(val) => (val != null) ? val.toString() : null;

// String url({
//   required String section,
//   required String function,
//   Map<String, String>? parameters,
//   String version = 'v1',
// }) =>
//     Uri(
//       scheme: 'http',
//       host: Uri.parse(baseUrl).host,
//       port: kPort,
//       pathSegments: ['YamahaExtendedControl', version, section, function],
//       queryParameters: parameters,
//     ).toString();
//
// Future request(String url) async {
//   Uri uri = Uri.parse(url);
//   http.Response response = await http.get(uri);
//   print('yxc: ${uri.toString()}');
//   if (response.statusCode == 200) {
//     print('yxc: ${response.body}');
//     var json = jsonDecode(response.body);
//     if (json['response_code'] != 0)
//       throw Exception(
//           "Request failed: ${kResponseCode[json['response_code']]}");
//     return json;
//   } else {
//     throw Exception('Request error: ${response.statusCode}');
//   }
// }
}
