import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: Routes.LIST_PICTURES,
      getPages: AppPages.routes,
    );
  }
}