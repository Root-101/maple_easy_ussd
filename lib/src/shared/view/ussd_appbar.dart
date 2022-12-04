import 'package:easy_ussd/src/app/theme/theme_exporter.dart';
import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class USSDSliverAppBar {
  static USSDAppBar({required String title, List<Widget>? actions}) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          title,
          style: TextsTheme.lightTextTheme.headline5!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      actions:
          actions ?? _secondaryButtons(Get.find<USSDIntroScreenController>()),
    );
  }

  /// A list of Widgets with all the secondary buttons to show
  /// besides the title of the [AppBar].
  static List<Widget> _secondaryButtons(
          USSDIntroScreenController _introScreenController) =>
      [
        // Show a [IconButton] that allow the user to go back
        // to the introduction screen.
        IconButton(
          onPressed: () {
            _introScreenController.resetOpenApp();
          },
          icon: Tooltip(
            message: "Ir a la página de introducción.",
            child: Icon(
              Icons.lightbulb_circle_outlined,
            ),
          ),
        ),
        // Show a [IconButton] that switch the main theme of the app from
        // light to dark and vice versa.
        ThemeSwitcher(
          clipper: const ThemeSwitcherCircleClipper(),
          builder: (context) {
            // The current brightness of the app so can be changed
            // to the oposited one.
            Brightness currentBrightness =
                ThemeModelInheritedNotifier.of(context).theme.brightness;
            return IconButton(
              onPressed: () {
                // Change to the custom dark theme of the app.
                if (currentBrightness == Brightness.light) {
                  ThemeSwitcher.of(context).changeTheme(
                    theme: CustomTheme.darkThemeData,
                  );
                  // Change to the custom light theme of the app.
                } else {
                  ThemeSwitcher.of(context).changeTheme(
                    theme: CustomTheme.lightThemeData,
                  );
                }
              },
              icon: Icon(
                currentBrightness == Brightness.light
                    ? Icons.format_paint_outlined
                    : Icons.format_paint,
              ),
            );
          },
        ),
      ];
}
