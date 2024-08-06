import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx/screen/home/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: const Text("Light"),
                  onTap: () {
                    controller.themeName.value="Light";
                    controller.setThemeData();
                  },
                ),
                PopupMenuItem(
                  child: const Text("Dark"),
                  onTap: () {
                    controller.themeName.value="Dark";
                    controller.setThemeData();
                  },
                ),
                PopupMenuItem(
                  child: const Text("system"),
                  onTap: () {
                    controller.themeName.value="system";
                    controller.setThemeData();
                  },
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${controller.i}",
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    controller.i++;
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.i--;
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.i.value = controller.i.value * 2;
                  },
                  child: const Icon(Icons.two_k_outlined),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.i.value = controller.i.value * 3;
                  },
                  child: const Icon(Icons.three_k_outlined),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.i.value = controller.i.value * 4;
                  },
                  child: const Icon(Icons.four_k_outlined),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.i.value = controller.i.value * 5;
                  },
                  child: const Icon(Icons.five_k_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
