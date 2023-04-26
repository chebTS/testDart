import 'package:cli2/Info.dart' as info;
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

void getData() async{
  final url = Uri.https('api.genderize.io', '/', {'name': 'lena'});

  // Await the HTTP GET response, then decode the
  // JSON data it contains.
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    info.Info userInfo = info.Info.fromJson(jsonResponse);
    print(userInfo.name);
    print(jsonResponse);
    //     final itemCount = jsonResponse['totalItems'];
    //     print('Number of books about HTTP: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}