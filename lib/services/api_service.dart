import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/suggestion.dart';


final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  Future<Suggestion> getSuggesstion() async {
    try {
      var response = await Dio().get('https://www.boredapi.com/api/activity');
      return Suggestion.fromJson(response.data);
    } catch (e) {
      throw Exception('Error getting suggestion');
    }
  }
}
