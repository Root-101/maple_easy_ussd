import 'dart:math';

import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter_animator/flutter_animator.dart';

class USSDTabFavorite {
  static Widget screen = USSDTabFavoriteScreen();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: GetBuilder<USSDController>(
        id: USSDController.UPDATE_ID_FAVORITE,
        builder: (_) {
          return HeartBeat(
            //siempre genera una llave unica para que actualize, con la misma llave considera el mismo widget y no actualiza
            key: UniqueKey(),
            child: Icon(
              CupertinoIcons.heart_fill,
            ),
          );
        }),
    title: ("Favoritos"),
    activeColorPrimary: Colors.redAccent,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDTabFavoriteScreen extends GetView<USSDController> {
  USSDTabFavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<USSDController>(
      id: USSDController.UPDATE_ID_FAVORITE,
      builder: (_) {
        List<USSDActionWidgetDomain> favorites = controller.findFavorites();
        return CustomScrollView(
          slivers: [
            USSDSliverAppBar(
              title: 'Favoritos',
            ),
            favorites.isEmpty
                ? SliverFillRemaining(
                    child: Center(
                      child: Text('No hay favoritos'),
                    ),
                  )
                : SliverList(
                    delegate: SliverChildListDelegate.fixed(
                      favorites.map((child) => child.widget).toList(),
                    ),
                  ),
          ],
        );
      },
    );
  }
}
