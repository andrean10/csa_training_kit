import 'package:get/get.dart';

import '../controllers/result_score_controller.dart';

class ResultScoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultScoreController>(() => ResultScoreController());
  }
}
