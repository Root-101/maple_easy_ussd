import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_ussd/src/app/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class USSDPlansWidgetsTileText extends StatelessWidget {
  /// The text styled as title in the tile.
  final String title;

  /// The optional text styled as a subtitle in the tile.
  final String? subtitle;

  /// A Tile that shows two text styled as title and a subtitle below.
  ///
  /// The subtitle is optional.
  ///
  /// The title is a bodyText 1 and the subtitle a subtitle 2.
  const USSDPlansWidgetsTileText({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// The [Text] title styled with BODYTEXT 1
        AutoSizeText(
          title,
          maxLines: 1,
          style: Get.textTheme.bodyText1,
        ),

        /// Only shows the subtitle field if it is not null and not empty.
        if (subtitle != null && subtitle!.isNotEmpty)

          /// The [Text] subtitle styled with SUBTITLE 2 and a gray dark color.
          AutoSizeText(
            subtitle!,
            maxLines: 1,
            style: Get.textTheme.subtitle2!.copyWith(
              color: ColorsTheme.grayDark,
            ),
          ),
      ],
    );
  }
}
