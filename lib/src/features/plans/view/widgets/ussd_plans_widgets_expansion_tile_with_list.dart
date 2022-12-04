import 'package:easy_ussd/src/app/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_ussd/src/features/plans/ussd_plans_exporter.dart';
import 'package:get/get.dart';

class USSDPlansWidgetsExpansionTileWithList
    extends GetView<USSDPlansController> {
  /// The plans group info to be shown in the expansion tile.
  final USSDPlansGroupsModel plansGroupData;

  /// A [ExpansionTile] that show info about a given plans group.
  ///
  /// Shows the name of the plans group as a title and expands to a list of consults
  /// belonging to the plans group.
  const USSDPlansWidgetsExpansionTileWithList({
    Key? key,
    required this.plansGroupData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      /// Creates a single-line with an expansion arrow icon that expands
      /// or collapses the tile to reveal or hide the [children].
      child: ExpansionTile(
        // The color to display behind the sublist when expanded.
        backgroundColor: Get.theme.brightness == Brightness.light
            ? ColorsTheme.primaryExtraLight
            : Colors.black54,

        //si inicialmente esta expandido o no
        initiallyExpanded: controller.isExpandedGroup(
          plansGroupData,
        ),

        //cuando se expande actualizo el valor para que cuando se vuelva a abrir la app este como se dejo
        onExpansionChanged: (value) {
          controller.changeExpansion(
            plansGroupData,
            value,
          );
        },

        // The color of the tile's titles when the sublist is expanded.
        textColor: ColorsTheme.primary,
        // The primary content of the list item.
        title: USSDPlansWidgetsHeader(
          title: plansGroupData.title,
        ),
        // The widgets that are displayed when the tile expands.
        children: <Widget>[
          ListView(
            children: plansGroupData.childs
                .map(
                  (e) => USSDPlansWidgetsPackageTile(
                    planItem: e,
                  ),
                )
                .toList(),
            shrinkWrap: true,
            // So de list can't be scrolled.
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
