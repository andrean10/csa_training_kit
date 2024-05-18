import 'package:get/get.dart';

import '../controllers/topic_computer_viruses_controller.dart';

class TopicComputerVirusesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicComputerVirusesController>(
      () => TopicComputerVirusesController(),
    );
  }
}
