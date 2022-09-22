import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDSliverAppBar extends StatelessWidget {
  late USSDIntroScreenController _introScreenController;

  String title;

  USSDSliverAppBar({required this.title, Key? key}) : super(key: key) {
    _introScreenController = Get.find<USSDIntroScreenController>();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: true,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
      actions: _actions(),
      floating: true,
      title: Text(
        '$title',
      ),
    );
  }

  List<Widget> _actions() => [
        IconButton(
          onPressed: () {
            _introScreenController.resetOpenApp();
          },
          icon: Tooltip(
            message: "Muestra de nuevo el introduction screen",
            child: Icon(
              Icons.lightbulb_circle_outlined,
            ),
          ),
        ),
        ThemeSwitcher(
          clipper: const ThemeSwitcherCircleClipper(),
          builder: (context) {
            Brightness br =
                ThemeModelInheritedNotifier.of(context).theme.brightness;
            return IconButton(
              onPressed: () {
                ThemeData l = ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.orange,
                );
                ThemeData d = ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.brown,
                );

                if (br == Brightness.light) {
                  ThemeSwitcher.of(context).changeTheme(
                    theme: d,
                  );
                } else {
                  ThemeSwitcher.of(context).changeTheme(
                    theme: l,
                  );
                }
              },
              icon: Icon(
                br == Brightness.light
                    ? Icons.format_paint_outlined
                    : Icons.format_paint,
              ),
            );
          },
        ),
      ];
}
