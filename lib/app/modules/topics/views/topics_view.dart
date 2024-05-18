import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/topics_controller.dart';

class TopicsView extends GetView<TopicsController> {
  const TopicsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final topic = controller.listTopics[index];
          return ListTile(
            title: Text(topic.title),
            onTap: () => controller.moveToDetailTopic(topic.navigation),
          );
        },
        itemCount: controller.listTopics.length,
      ),
    );
  }
}
