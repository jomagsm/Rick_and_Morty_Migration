import 'package:flutter/material.dart';

import '../episode_screen.dart';


getTabs(List tabsName, String title) {
  List<Widget> tabs = [];
  for (var i in tabsName) {
    tabs.add(Tab(
      child: Text("${title.toUpperCase()} $i"),
    ));
  }
  return tabs;
}

List<Widget> getTabBarView(
  List tabsName,
) {
  List<Widget> children = [];
  for (var i in tabsName) {
    children.add(GetTabBarView(
      seasonId: i,
    ));
  }
  print(children);
  return children;
}
