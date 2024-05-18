import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WidgetCourse {
  final ThemeData theme;

  WidgetCourse({required this.theme});

  Widget title(String text) {
    final textTheme = theme.textTheme;
    return AutoSizeText(
      text,
      minFontSize: textTheme.titleLarge?.fontSize ?? 12,
      style: textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget subtitle(String text, {int maxLines = 2}) {
    final textTheme = theme.textTheme;
    return AutoSizeText(
      text,
      minFontSize: textTheme.titleSmall?.fontSize ?? 12,
      style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      maxLines: maxLines,
    );
  }

  Widget body(
    String text, {
    TextAlign textAlign = TextAlign.start,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    final textTheme = theme.textTheme;
    return AutoSizeText(
      text,
      style: textTheme.bodyLarge?.copyWith(fontStyle: fontStyle),
      minFontSize: textTheme.bodyMedium?.fontSize ?? 12,
      textAlign: textAlign,
    );
  }

  Widget image(String name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(name),
    );
  }
}
