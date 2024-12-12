import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PictureDetailController extends GetxController {
  var pictureDetail = <String, dynamic>{}.obs;
  var isLoading = false.obs;

  Future<void> fetchPictureDetail(String id) async {
    try {
      final response = await http.get(Uri.parse('https://picsum.photos/id/$id/info'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setPictureDetail(data);
      } else {
        print("Error fetching picture details: ${response.statusCode}");
      }
    } catch (error) {
      print("Network error: $error");
    }
  }

  void setPictureDetail(Map<String, dynamic> data) {
    pictureDetail.value = data;
  }
}

