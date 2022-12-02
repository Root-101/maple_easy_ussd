import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_ussd/src/app/theme/colors_theme.dart';
import 'package:easy_ussd/src/features/favorites/ussd_favorites_exporter.dart';
import 'package:easy_ussd/src/features/plans/ussd_plans_exporter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class USSDPlansWidgetsPackageTile extends StatelessWidget {
  /// The plan information to show in the tile.
  final USSDPlanItemModel planItem;

  /// The tile of a plan.
  ///
  /// Show price, name and description of the given plan.
  const USSDPlansWidgetsPackageTile({
    Key? key,
    required this.planItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Row(
                children: [
                  /// A [CircleAvatar] that shows the price of the given plan.
                  CircleAvatar(
                    backgroundColor: ColorsTheme.primary,
                    child: USSDPlansWidgetsHeader(
                      title: planItem.price,
                      textColor: Colors.white,
                    ),
                  ),

                  /// Separator.
                  const SizedBox(width: 16.0),

                  /// A [TileText] that shows the name and description
                  /// of the given plan.
                  USSDPlansWidgetsTileText(
                    title: planItem.title,
                    subtitle: planItem.description,
                  ),
                ],
              ),
              onTap: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.warning,
                  body: Center(
                    child: Column(
                      children: [
                        Text(
                          'Confirmación',
                          textAlign: TextAlign.center,
                          style: Get.textTheme.headline6,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(
                            textAlign: TextAlign.center,
                            style: Get.textTheme.bodyText1,
                            TextSpan(
                              children: [
                                TextSpan(text: 'Seguro desea comprar el '),
                                TextSpan(
                                  text: '${planItem.title} ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'por ',
                                ),
                                TextSpan(
                                  text: '\$${planItem.price}.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  btnOkOnPress: () async {
                    context.loaderOverlay.show();
                    String resp = await planItem.function.execute();
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      title: 'Compra de plan.',
                      desc: '$resp',
                      btnOkColor: Colors.blue,
                      btnOkOnPress: () {},
                    )..show();
                    context.loaderOverlay.hide();
                  },
                  btnCancelOnPress: () {},
                )..show();
              },
            ),

            /// Show if the plan is mark as favorite.
            FavoriteButton(
              planItem.function,
            ),
          ],
        ),
      ),
    );
  }
}
