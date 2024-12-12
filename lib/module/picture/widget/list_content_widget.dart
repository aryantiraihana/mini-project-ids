import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class ListPictureWidget extends StatelessWidget {
  final PictureListController controller = Get.find<PictureListController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        itemCount: controller.pictures.length,
        itemBuilder: (context, index) {
          final image = controller.pictures[index];
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    final id = image['id'];
                    Get.toNamed(Routes.DETAIL_PICTURE, arguments: {'id': id});
                  },
                  child: Image.network(image['download_url']),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'by ' + image['author'],
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
