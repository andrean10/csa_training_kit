import 'package:csa_training_kit/app/data/models/topics/topic_model.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class TopicsController extends GetxController {
  final listTopics = [
    TopicModel('Computer Viruses', Routes.TOPIC_COMPUTER_VIRUSES),
    TopicModel('DDoS Attack', Routes.TOPIC_DDOS_ATTACK),
    TopicModel('Malware', Routes.TOPIC_MALWARE),
    TopicModel('Ransomware', Routes.TOPIC_RANSOMWARE),
    TopicModel('Trojan', Routes.TOPIC_TROJAN),
    TopicModel('Worm Virus', Routes.TOPIC_WORM_VIRUS),
  ];

  void moveToDetailTopic(String navigation) => Get.toNamed(navigation);
}
