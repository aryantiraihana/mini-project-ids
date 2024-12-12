import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies() {
    final dio = Dio(); // Buat satu instance Dio
    Get.lazyPut(() => PictureListController(PictureService(dio)));
    Get.lazyPut<PictureDetailController>(() => PictureDetailController());
  }
}
