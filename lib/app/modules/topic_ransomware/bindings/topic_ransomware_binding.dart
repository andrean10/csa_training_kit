import 'package:get/get.dart';

import '../controllers/topic_ransomware_controller.dart';

class TopicRansomwareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicRansomwareController>(() => TopicRansomwareController());
  }
}
