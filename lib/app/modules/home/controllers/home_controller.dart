import 'package:get/get.dart';

import '../../../../utils/constants_asset_image.dart';
import '../../../data/models/home/home_model.dart';

class HomeController extends GetxController {
  final dataHome = HomeModel(
    title: "Cyber security awareness training kit for student",
    descripton: """
 Students potential targets for cyber threats such as phishing, malware, and identity theft. Cybersecurity awareness training helps them recognize and avoid these threats, protecting both personal and academic information. Providing students with awareness and basic cybersecurity knowledge equips them for future careers and ensures they understand the importance of security in professional settings. Cybersecurity awareness training instills a sense of responsibility and ethical behavior in the digital realm. Students learn the importance of respecting others' privacy, understanding the consequences of cyberbullying, and recognizing the impact of their online actions. With technological advancements, the threat landscape evolves. Cybersecurity awareness training keeps students informed about the latest threats and best practices, enabling them to adapt to new technologies and safeguard against emerging risks.
""",
    image: ConstantsAssetImage.imageLogo,
  );
}
