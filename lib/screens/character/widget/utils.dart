import 'package:flutter/material.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

getColumTitleContent(title, content) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('$title', style: TextThemes.profileRowTitle),
      Text(
        "$content",
        style: TextThemes.profileRowContent,
        overflow: TextOverflow.visible,
      ),
    ],
  );
}

getRowTitleContent(title, contentFirst, onPressed) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextThemes.profileRowTitle),
          Text(
            "$contentFirst",
            style: TextThemes.profileRowContent,
             overflow: TextOverflow.fade,
          ),
        ],
      ),
      IconButton(
          color: ColorTheme.textAppearanceOverlineFullName,
          icon: Icon(Icons.navigate_next),
          onPressed: onPressed)
    ],
  );
}
