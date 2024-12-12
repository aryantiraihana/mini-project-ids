// picture_service.dart
import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio;

  PictureService(this._dio);

  Future<List<Map<String, dynamic>>> fetchListPicture({
    int limit = 10,
    int page = 1,
  }) async {
    try {
      final params = {
        'limit': limit,
        'page': page,
      };
      final response = await _dio.get('https://picsum.photos/v2/list', queryParameters: params);
      if (response.statusCode == 200) {
        return List<Map<String, dynamic>>.from(response.data);
      } else {
        throw Exception('Failed to load images');
      }
    } catch (e) {
      print('Error fetching images: $e');
      return [];
    }
  }
}