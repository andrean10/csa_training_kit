import 'package:get/get.dart';

import '../controllers/topic_ddos_attack_controller.dart';

class TopicDdosAttackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicDdosAttackController>(() => TopicDdosAttackController());
  }
}
