import 'package:easy_ussd/src/app/theme/theme_exporter.dart';
import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class USSDSliverAppBar extends StatelessWidget {
  /// The controller of the Intro Screen.
  late USSDIntroScreenController _introScreenController;

  /// The title to be shown in the [AppBar].
  final String title;

  /// Builds a [SliverAppBar] with a custom title and the posibility to access
  /// the intro page and to change the theme of the app between light and dark.
  USSDSliverAppBar({required this.title, Key? key}) : super(key: key) {
    // Dependency Injection.
    _introScreenController = Get.find<USSDIntroScreenController>();
  }

  @override
  Widget build(BuildContext context) {
    // Creates a Material Design app bar that
    // can be placed in a [CustomScrollView].
    return SliverAppBar(
      // Whether to show the shadow appropriate for the [elevation]
      // even if the content is not scrolled under the [AppBar].
      forceElevated: true,
      elevation: 5,
      // The shape of the app bar's [Material] as well as its shadow.
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
      // A list of Widgets to display in a row after the [title] widget.
      actions: _secondaryButtons(),
      // Whether the app bar should become visible as soon as the user scrolls
      // towards the app bar.
      floating: true,
      // The primary widget displayed in the app bar.
      title: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          '$title',
          style: TextsTheme.textTheme.headline5!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  /// A list of Widgets with all the secondary buttons to show
  /// besides the title of the [AppBar].
  List<Widget> _secondaryButtons() => [
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
