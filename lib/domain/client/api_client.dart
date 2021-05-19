import 'dart:convert';

import 'package:flutter_api_get_sample/domain/entity/event_information.dart';
import 'package:flutter_api_get_sample/domain/response/api_error.dart';
import 'package:flutter_api_get_sample/domain/response/response.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  static final endpoint = "https://mhf.ss-n.app";

  static Future<Response<List<EventInformation>>> fetchEvents() async {
    final response = await http.get(Uri.https(endpoint, "/shikure_table.json"));
    List<dynamic> bodyJsonArray = json.decode(response.body);

    if (response.statusCode == 200) {
      return Response.success(bodyJsonArray
          .map((json) => EventInformation.fromJson(json))
          .toList());
    } else {
      final apiError =
          ApiError(errorMessage: bodyJsonArray.first['error']['message']);
      return Response.failure(apiError);
    }
  }
}
