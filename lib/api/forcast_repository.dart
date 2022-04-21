// THIS IS A SAMPLE FILE. Get the full content at the link above.

import 'dart:convert';
import 'dart:io';

import 'package:appinio_case_challenge/models/app_models.dart';
import 'package:http/http.dart' as http;

class ForcastsRepository {
  static Future<Forcast> loadForcast() async {
    final queryParameters = {
      'lon': '113.2',
      'lat': '23.1',
      'ac': '0',
      'unit': 'metric',
      'output': 'json',
      'tzshift': '0'
    };
    final uri = Uri.http('www.7timer.info', '/bin/astro.php', queryParameters);
    final headers = {HttpHeaders.contentTypeHeader: 'application/json'};
    final response = await http.get(uri, headers: headers);
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final _forcast = Forcast.fromJson(decodedResponse);
    return _forcast;
  }
}
