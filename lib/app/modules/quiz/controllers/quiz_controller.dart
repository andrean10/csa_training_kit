import 'package:csa_training_kit/app/data/models/quiz/quiz_model.dart';
import 'package:csa_training_kit/app/modules/init/controllers/init_controller.dart';
import 'package:csa_training_kit/app/routes/app_pages.dart';
import 'package:csa_training_kit/utils/constants_asset_image.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class QuizController extends GetxController {
  late final InitController _initC;

  late final List<QuizModel> dataQuiz;

  final currentQuestionIndex = 0.obs;
  final currentOptionIndex = RxnInt();
  final userAnswer = [];

  final isLoading = false.obs;

  final logger = Logger();

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  void _init() {
    if (Get.isRegistered<InitController>()) {
      _initC = Get.find<InitController>();
    }

    dataQuiz = [
      QuizModel(
        image: ConstantsAssetImage.imgQuestion,
        question: 'What will happened if you click popup while using internet?',
        options: [
          'it will take you to a malicious web and and it is possible that a virus will enter your device',
          'nothing happened',
          'more pop ups will appear',
        ],
        correctAnswerIndex: 0,
      ),
      QuizModel(
        question: 'What you will do if you get call from suspicious number?',
        options: [
          'pick up the call and hear who is calling you',
          'dont pickup',
        ],
        correctAnswerIndex: 1,
      ),
      QuizModel(
        question: 'What is scam?',
        options: [
          'one of the ways to steal data',
          'just to bother people',
        ],
        correctAnswerIndex: 0,
      ),
      QuizModel(
        question: 'How dangerous virus and malware?',
        options: [
          'very dangerous it can damage your device and cause data loss',
          'not to dangerous only some can damage your device and cause data loss',
          'not dangerous at all',
        ],
        correctAnswerIndex: 0,
      ),
      QuizModel(
        question: 'Do you know how virus or malware can get into your device?',
        options: [
          'by download pirate software',
          'from download app from application store in your device',
          'update your device',
        ],
        correctAnswerIndex: 0,
      ),
      QuizModel(
        question: 'Which of the following is not a type of virus?',
        options: [
          'boot sector',
          'polymorphic',
          'multipartite',
          'trojans',
        ],
        correctAnswerIndex: 3,
      ),
      QuizModel(
        question:
            'Do you know how to prevent virus or malware from enter your device?',
        options: [
          'don’t download any malicious app',
          'make sure your password strong',
          'maksure your device is up to date and have antivirus',
          'Contact the customer service',
        ],
        correctAnswerIndex: 0,
      ),
      QuizModel(
        question: 'What you will do if your device move by it self?',
        options: [
          'Disconnected from internet',
          'Dont no anything',
          'Record and share to sosial media',
        ],
        correctAnswerIndex: 0,
      ),
      QuizModel(
        question: 'What you will do if you know your data is leaked?',
        options: [
          'Dont do anything',
          'Report to the administration',
          'I dont know',
        ],
        correctAnswerIndex: 1,
      ),
      QuizModel(
        question:
            'What you whill do if suspicious number call and tell you that they from bank and need your bank information?',
        options: [
          'Tell them',
          'Usk for more details',
          "make a call or go to the bank and make sure it's them",
        ],
        correctAnswerIndex: 2,
      ),
      QuizModel(
        question: 'How antivirus works?',
        options: [
          'do nothing',
          'detecting and deleting malicious code to malware from causing damage to your device',
          'only new device need it',
        ],
        correctAnswerIndex: 1,
      ),
      QuizModel(
        question:
            'Do you know what happened if you downloaded any pirate software (crack software?',
        options: [
          'there is a chance for your device to be infected with malware',
          'nothing happened',
          'you will make your motherboard damaged',
        ],
        correctAnswerIndex: 0,
      ),
      QuizModel(
        question: 'Do what virus is contain in pirate software?',
        options: [
          'ddos and dos',
          'Polymorphic and Resident',
          'malware and phishing',
        ],
        correctAnswerIndex: 2,
      ),
      QuizModel(
        question:
            'Device get crash (black screen) after install pirate software what you need to do?',
        options: [
          'shutdown your pc and do nothing',
          'start get panic and screaming',
          'take your device to a repair shop and do a checkup',
        ],
        correctAnswerIndex: 2,
      ),
    ];
  }

  void setCurrentIndexOption(int value) => currentOptionIndex.value = value;

  void nextQuestion(int indexOption) {
    userAnswer.add(indexOption);
    currentQuestionIndex.value++;
    currentOptionIndex.value = null;

    logger.d('debug: index jawaban user = $indexOption');
    logger.d('debug: list jawaban user = $userAnswer');
  }

  void previousQuestion() {
    userAnswer.removeLast();
    final previousIndex = currentQuestionIndex.value--;
    currentQuestionIndex.value = previousIndex;
    currentOptionIndex.value = userAnswer[previousIndex];

    logger.d('debug: list jawaban user = $userAnswer');
  }

  void calculateScore() {
    userAnswer.add(currentOptionIndex.value);

    Future.sync(() {
      isLoading.value = true;

      var score = 0;
      for (var i = 0; i < dataQuiz.length; i++) {
        final quiz = dataQuiz[i];
        final answer = userAnswer[i];

        if (quiz.isCorrect(answer)) {
          score++;
        }
      }

      return score;
    }).then((score) {
      Get.offAllNamed(
        Routes.RESULT_SCORE,
        arguments: {
          'score': score,
          'number_questions': dataQuiz.length,
        },
      );
    }).catchError((e) {
      logger.e('Error: calculateScore = $e');
    });
  }
}
