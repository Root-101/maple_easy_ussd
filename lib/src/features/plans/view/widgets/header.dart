import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  /// The text to show as title of the header.
  final String title;

  /// The color of the text of the header.
  final Color? textColor;

  /// A [Text] Widget with a optional custom color and BODYTEXT 1 as textTheme.
  const Header({
    Key? key,
    required this.title,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      maxLines: 1,
      style: textColor == null
          ? Get.textTheme.bodyText1
          : Get.textTheme.bodyText1!.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
    );
  }
}
