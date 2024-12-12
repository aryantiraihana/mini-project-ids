import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class ListPictureView extends StatelessWidget {
  final PictureListController controller = Get.put(PictureListController(PictureService(Dio())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of Images')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return LoadingWidget();
        } else {
          return ListPictureWidget();
        }
      }),
    );
  }
}
