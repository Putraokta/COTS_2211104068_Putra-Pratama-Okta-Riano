// lib/app/data/providers/api_provider.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cots_2211104068/core/constans/app_constans.dart';
import 'package:cots_2211104068/core/utils/logger.dart';

class ApiProvider {
  final http.Client client;

  ApiProvider({required this.client});

  // Mengambil data dari endpoint tertentu
  Future<Map<String, dynamic>?> fetchData(String endpoint) async {
    final url = Uri.parse('${AppConstants.apiBaseUrl}/$endpoint');
    
    try {
      final response = await client.get(url);

      if (response.statusCode == 200) {
        // Jika response sukses, return data dalam format JSON
        return json.decode(response.body);
      } else {
        Logger.error('Failed to load data: ${response.statusCode}');
        return null;
      }
    } catch (error) {
      Logger.error('Error fetching data: $error');
      return null;
    }
  }

  // Menyimpan data (POST request)
  Future<Map<String, dynamic>?> postData(String endpoint, Map<String, dynamic> data) async {
    final url = Uri.parse('${AppConstants.apiBaseUrl}/$endpoint');
    
    try {
      final response = await client.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        // Jika berhasil, return data
        return json.decode(response.body);
      } else {
        Logger.error('Failed to post data: ${response.statusCode}');
        return null;
      }
    } catch (error) {
      Logger.error('Error posting data: $error');
      return null;
    }
  }
}
