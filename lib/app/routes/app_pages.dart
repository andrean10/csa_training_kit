import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/quiz/bindings/quiz_binding.dart';
import '../modules/result_score/bindings/result_score_binding.dart';
import '../modules/result_score/views/result_score_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/topic_computer_viruses/bindings/topic_computer_viruses_binding.dart';
import '../modules/topic_computer_viruses/views/topic_computer_viruses_view.dart';
import '../modules/topic_ddos_attack/bindings/topic_ddos_attack_binding.dart';
import '../modules/topic_ddos_attack/views/topic_ddos_attack_view.dart';
import '../modules/topic_malware/bindings/topic_malware_binding.dart';
import '../modules/topic_malware/views/topic_malware_view.dart';
import '../modules/topic_ransomware/bindings/topic_ransomware_binding.dart';
import '../modules/topic_ransomware/views/topic_ransomware_view.dart';
import '../modules/topic_trojan/bindings/topic_trojan_binding.dart';
import '../modules/topic_trojan/views/topic_trojan_view.dart';
import '../modules/topic_worm_virus/bindings/topic_worm_virus_binding.dart';
import '../modules/topic_worm_virus/views/topic_worm_virus_view.dart';
import '../modules/topics/bindings/topics_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      bindings: [
        MainBinding(),
        HomeBinding(),
        TopicsBinding(),
        QuizBinding(),
      ],
    ),
    GetPage(
      name: _Paths.TOPIC_COMPUTER_VIRUSES,
      page: () => const TopicComputerVirusesView(),
      binding: TopicComputerVirusesBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.TOPIC_DDOS_ATTACK,
      page: () => const TopicDdosAttackView(),
      binding: TopicDdosAttackBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.TOPIC_MALWARE,
      page: () => const TopicMalwareView(),
      binding: TopicMalwareBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.TOPIC_RANSOMWARE,
      page: () => const TopicRansomwareView(),
      binding: TopicRansomwareBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.TOPIC_TROJAN,
      page: () => const TopicTrojanView(),
      binding: TopicTrojanBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.TOPIC_WORM_VIRUS,
      page: () => const TopicWormVirusView(),
      binding: TopicWormVirusBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.TOPIC_WORM_VIRUS,
      page: () => const TopicWormVirusView(),
      binding: TopicWormVirusBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.RESULT_SCORE,
      page: () => const ResultScoreView(),
      binding: ResultScoreBinding(),
      transition: Transition.cupertino,
    ),
  ];
}
