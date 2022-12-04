import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_ussd/src/app/theme/colors_theme.dart';

class TextContainer extends StatelessWidget {
  /// The child inside the area of the container.
  final Widget child;

  /// The text to show as title in top of the container.
  final String textTitle;

  /// Builds a Widget similar to a [TextArea] but insted of a text,
  /// the area will hold a widget.
  const TextContainer({
    Key? key,
    required this.child,
    required this.textTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        /// The container that holds the child Widget.
        Container(
          width: double.infinity,
          // Empty space to surround the [decoration] and [child].
          margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          // Empty space to inscribe inside the [decoration].
          // The [child], if any, is placed inside this padding.
          padding: const EdgeInsets.only(bottom: 5, left: 4, right: 4),
          // The decoration to paint behind the [child].
          decoration: BoxDecoration(
            // A border to draw above the background.
            border: Border.all(
              color: ColorsTheme.primary,
              width: 3,
            ),
            // Round the corners of the container.
            borderRadius: BorderRadius.circular(10),
            // The shape to fill the background
            shape: BoxShape.rectangle,
          ),
          // The [child] contained by the container.
          child: child,
        ),
        // The title/text of the container.
        Positioned(
          // So it gets in the midle of the container.
          left: 50,
          // So it gets in top of the container border.
          top: 7,
          child: Container(
            // To add a white space in the beginning and end of the text/title.
            padding: const EdgeInsets.only(left: 10, right: 10),
            // This should be the color of the background so the text seems like
            // it is floating.
            color: Get.theme.brightness == Brightness.light
                ? Colors.grey.shade50
                : Colors.grey[850],
            // The text/title of the container.
            child: Text(
              textTitle,
              style: Get.textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
