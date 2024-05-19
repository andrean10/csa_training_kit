import 'package:auto_size_text/auto_size_text.dart';
import 'package:csa_training_kit/app/widgets/appbar/custom_app_bar.dart';
import 'package:csa_training_kit/shared/shared_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.mediaQuery.size;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: customAppBar(
        title: const Text('Quiz'),
        centerTitle: true,
        isCanBack: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card.filled(
              // color: Colors.red,
              child: Obx(
                () => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 21,
                  ),
                  child: Column(
                    children: [
                      AutoSizeText(
                        'Question ${controller.currentQuestionIndex.value + 1} of ${controller.dataQuiz.length}',
                        style: textTheme.labelLarge,
                      ),
                      const Gap(4),
                      (controller
                                  .dataQuiz[
                                      controller.currentQuestionIndex.value]
                                  .image !=
                              null)
                          ? Column(
                              children: [
                                Image.asset(
                                  controller
                                      .dataQuiz[
                                          controller.currentQuestionIndex.value]
                                      .image!,
                                  height: size.height / 10,
                                  fit: BoxFit.cover,
                                ),
                                const Gap(8),
                              ],
                            )
                          : Container(),
                      AutoSizeText(
                        controller
                            .dataQuiz[controller.currentQuestionIndex.value]
                            .question,
                        style: textTheme.titleLarge,
                      ),
                      const Gap(24),
                      Obx(() {
                        final options = controller
                            .dataQuiz[controller.currentQuestionIndex.value]
                            .options;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: options.map((item) {
                            final index = options.indexOf(item);

                            return Obx(() {
                              final currentIndex =
                                  controller.currentOptionIndex.value;
                              Color? bgColor;
                              Color? textColor;

                              if (index == currentIndex) {
                                bgColor = SharedTheme.successColor;
                                textColor = SharedTheme.whiteColor;
                              }

                              return Container(
                                width: double.infinity,
                                margin: (options.last != item)
                                    ? const EdgeInsets.only(bottom: 12)
                                    : null,
                                child: FilledButton.tonal(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStatePropertyAll(bgColor),
                                    foregroundColor:
                                        WidgetStatePropertyAll(textColor),
                                  ),
                                  onPressed: () =>
                                      controller.setCurrentIndexOption(index),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(item),
                                  ),
                                ),
                              );
                            });
                          }).toList(),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(12),
            Obx(() {
              final index = controller.currentQuestionIndex.value;
              final length = controller.dataQuiz.length;
              final userSelectedOption = controller.currentOptionIndex.value;

              return Row(
                children: [
                  (index != 0)
                      ? Expanded(
                          child: OutlinedButton(
                            onPressed: controller.previousQuestion,
                            child: const Text('Previous'),
                          ),
                        )
                      : Container(),
                  (index != 0 && index < length) ? const Gap(8) : Container(),
                  Expanded(
                    child: builderNextButton(
                      index: index,
                      length: length,
                      indexOption: userSelectedOption,
                    ),
                  ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }

  Widget builderNextButton({
    required int index,
    required int length,
    required int? indexOption,
  }) {
    var text = 'Submit';
    Function()? pressed;

    if (index < (length - 1)) {
      text = 'Next';

      if (indexOption != null) {
        pressed = () => controller.nextQuestion(indexOption);
      }
    } else {
      if (indexOption != null) {
        pressed = () => controller.calculateScore();
      }
    }

    return Obx(
      () => FilledButton(
        onPressed: pressed,
        child: (controller.isLoading.value)
            ? const CircularProgressIndicator()
            : Text(text),
      ),
    );
  }
}
