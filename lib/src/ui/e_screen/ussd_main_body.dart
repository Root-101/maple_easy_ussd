import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class USSDMainBody extends GetView<USSDController> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  USSDMainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      USSDTabFavorite.item,
      USSDTabConsultas.item,
      USSDTabDatos.item,
    ];
  }

  List<Widget> _buildScreens() {
    return [
      USSDTabFavorite.screen,
      USSDTabConsultas.screen,
      USSDTabDatos.screen,
    ];
  }
}
