import 'dart:ffi';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:csa_training_kit/app/widgets/appbar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: customAppBar(
        title: const Text('Quiz'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card.filled(
            margin: const EdgeInsets.all(16),
            child: Obx(
              () {
                return Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      AutoSizeText(
                        'Question ${controller.currentQuestionIndex + 1} of ${controller.dataQuiz.length}',
                        style: textTheme.labelLarge,
                      ),
                      const Gap(4),
                      AutoSizeText(
                        controller
                            .dataQuiz[controller.currentQuestionIndex.value]
                            .question,
                        style: textTheme.titleLarge,
                      ),
                      const Gap(4),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Selanjutnya'),
            ),
          ),
        ],
      ),
    );
  }
}
