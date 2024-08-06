import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screen/home/controller/home_controller.dart';
import 'package:getx/utils/app_routes.dart';

void main() {
  HomeController controller = Get.put(HomeController());
  controller.getThemeData();
  runApp(
    Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: controller.themeName.value == "Light"
            ? ThemeMode.light
            : controller.themeName.value == "Dark"
                ? ThemeMode.dark
                : ThemeMode.system,
        routes: app_routes,
      ),
    ),
  );
}
