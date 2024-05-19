import 'package:auto_size_text/auto_size_text.dart';
import 'package:csa_training_kit/app/modules/result_score/controllers/result_score_controller.dart';
import 'package:csa_training_kit/utils/constants_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ResultScoreView extends GetView<ResultScoreController> {
  const ResultScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final textTheme = context.textTheme;
    final size = context.mediaQuery.size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ConstantsAssetImage.iconThropy,
                    width: size.width / 4,
                  ),
                  const Gap(16),
                  AutoSizeText(
                    'Congratulations',
                    style: textTheme.displayMedium,
                  ),
                  const Gap(16),
                  AutoSizeText(
                    'Your Score',
                    style: textTheme.titleMedium,
                  ),
                  const Gap(4),
                  AutoSizeText.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${controller.score}',
                          style: textTheme.headlineMedium?.copyWith(
                            color: theme.colorScheme.error,
                          ),
                        ),
                        const TextSpan(text: ' / '),
                        TextSpan(
                          text: '${controller.sizeQuestions}',
                        )
                      ],
                    ),
                    style: textTheme.headlineMedium,
                  ),
                  const Gap(16),
                  AutoSizeText(
                    'You did a great job, Learn more by taking another quiz',
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const Gap(21),
                  FilledButton(
                    onPressed: controller.backHome,
                    child: const Text('Back To Home'),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                ConstantsAssetImage.imgWaves,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
