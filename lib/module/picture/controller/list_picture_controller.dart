import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class PictureListController extends GetxController {
  final PictureService _pictureService;

  PictureListController(this._pictureService);

  var pictures = <Map<String, dynamic>>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchListPicture();
  }

  void fetchListPicture() async {
    isLoading(true);
    try {
      pictures.value = await _pictureService.fetchListPicture();
    } finally {
      isLoading(false);
    }
  }
}
