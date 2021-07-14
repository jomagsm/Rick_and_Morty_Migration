import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/resources/svg_icons.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

class AppBarArrowBack extends StatelessWidget {
  final bool title;
  final bool arrowBackButton;
  const AppBarArrowBack({Key ? key, required this.title, required this.arrowBackButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title
          ? Text(S.of(context).settings, style: TextThemes.profileListTitle)
          : SizedBox(),
      automaticallyImplyLeading: true,
      leadingWidth: 90,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: arrowBackButton
          ? Container(
              padding: const EdgeInsets.only(left: 16),
              width: 48,
              height: 48,
              child: FloatingActionButton(
                backgroundColor: ColorTheme.appBarBackground,
                elevation: 0,
                child: SvgPicture.asset(
                  SvgIcons.arowBack,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          : SizedBox(),
    );
  }
}
