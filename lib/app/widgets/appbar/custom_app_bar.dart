import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar customAppBar({
  Widget? title,
  bool? centerTitle,
  List<Widget>? actions,
  PreferredSizeWidget? bottom,
  bool isCanBack = true,
}) =>
    AppBar(
      leading: (isCanBack)
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () => Get.back(),
            )
          : null,
      title: title,
      centerTitle: centerTitle ?? true,
      actions: actions,
      bottom: bottom,
    );
