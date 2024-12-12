import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

part 'app_routes.dart';

class AppPages {
  // static const String LIST_PICTURES = '/list-pictures';
  // static const String DETAIL_PICTURE = '/detail-picture/:id';

  static final routes = [
    GetPage(
      name: Routes.LIST_PICTURES,
      page: () => ListPictureView(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: Routes.DETAIL_PICTURE,
      page: () => DetailPictureView(),
      binding: PictureBinding(),
    ),
  ];
}