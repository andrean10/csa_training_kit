import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../quiz/views/quiz_view.dart';
import '../../topics/views/topics_view.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: builderContent(),
      bottomNavigationBar: builderBottomNavBar(),
    );
  }

  Widget builderContent() {
    return Obx(
      () => IndexedStack(
        index: controller.currentIndex.value,
        children: const [
          HomeView(),
          TopicsView(),
          QuizView(),
        ],
      ),
    );
  }

  Widget builderBottomNavBar() {
    return Obx(
      () => NavigationBar(
        selectedIndex: controller.currentIndex.value,
        onDestinationSelected: controller.changeDestination,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            selectedIcon: Icon(Icons.home_rounded),
          ),
          NavigationDestination(
            icon: Icon(Icons.topic_outlined),
            label: 'Topics',
            selectedIcon: Icon(Icons.topic_rounded),
          ),
          NavigationDestination(
            icon: Icon(Icons.quiz_outlined),
            label: 'Quiz',
            selectedIcon: Icon(Icons.quiz_rounded),
          ),
        ],
      ),
    );
  }
}
