import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class PictureDetailWidget extends StatelessWidget {
  final PictureDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    final id = arguments?['id'];

    controller.fetchPictureDetail(id);

    return Obx(() {
      final image = controller.pictureDetail;

      return Card(
        margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(image['download_url']),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Taken by ${image['author']}',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
