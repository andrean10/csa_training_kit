import 'package:get/get.dart';

import '../controllers/topic_worm_virus_controller.dart';

class TopicWormVirusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicWormVirusController>(
      () => TopicWormVirusController(),
    );
  }
}
