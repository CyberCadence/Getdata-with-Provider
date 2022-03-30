import 'dart:convert';
import 'dart:developer';

import 'package:workout/modelClass.dart';
import 'package:http/http.dart' as http;

Future<ModelClass?> getData() async {
  ModelClass? result;

  try {
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/2'));

    if (response.statusCode == 200) {
      final item = json.decode(response.body);

      result = ModelClass.fromJson(item);
    } else {
      print('error');
    }
  } catch (e) {
    log(e.toString());
  }
  return result;
}
