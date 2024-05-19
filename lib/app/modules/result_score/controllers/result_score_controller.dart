import 'package:csa_training_kit/app/modules/init/controllers/init_controller.dart';
import 'package:csa_training_kit/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ResultScoreController extends GetxController {
  late final InitController _initC;

  var score = 0;
  var sizeQuestions = 0;

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  void _init() {
    if (Get.isRegistered<InitController>()) {
      _initC = InitController();
    }

    final args = Get.arguments;

    score = args['score'] as int;
    sizeQuestions = args['number_questions'] as int;
  }

  void backHome() => Get.offAllNamed(Routes.MAIN);
}
