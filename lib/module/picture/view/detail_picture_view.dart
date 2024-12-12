import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';
import 'package:dio/dio.dart';

class DetailPictureView extends StatelessWidget {
  final PictureDetailController controller = Get.put(PictureDetailController());

  @override
  Widget build(BuildContext context) {
    final id = Get.arguments['id'];
    controller.fetchPictureDetail(id);

    return Scaffold(
      appBar: AppBar(title: Text('Image Details')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return LoadingWidget();
        } else {
          return PictureDetailWidget();
        }
      }),
    );
  }
}
