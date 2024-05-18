import 'package:csa_training_kit/app/widgets/widget_course.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetCourse = WidgetCourse(theme: context.theme);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            widgetCourse.image(controller.dataHome.image),
            const Gap(21),
            widgetCourse.title(controller.dataHome.title),
            const Gap(21),
            widgetCourse.body(
              controller.dataHome.descripton,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
