import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(4000.ms, () => _moveToMain());
  }

  void _moveToMain() {
    Get.offAllNamed(Routes.MAIN);
  }
}
