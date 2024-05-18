import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/topic_worm_virus_controller.dart';

class TopicWormVirusView extends GetView<TopicWormVirusController> {
  const TopicWormVirusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TopicWormVirusView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TopicWormVirusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
