import 'package:get/get.dart';

import '../controllers/topic_trojan_controller.dart';

class TopicTrojanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicTrojanController>(
      () => TopicTrojanController(),
    );
  }
}
