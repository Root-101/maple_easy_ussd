import 'package:easy_ussd/src/app/theme/colors_theme.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FavoriteButton extends GetView<USSDFavoritesController> {
  final USSDCode function;

  const FavoriteButton(this.function);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: ColorsTheme.primaryExtraLight,
      onPressed: () => controller.changeFavorite(function),
      icon: GetBuilder<USSDFavoritesController>(builder: (_) {
        return Icon(
          controller.isFavoriteAction(function)
              ? CupertinoIcons.heart_fill
              : CupertinoIcons.heart,
          color: ColorsTheme.primary,
        );
      }),
    );
  }
}
