import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/resources/svg_icons.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

class TotalCharactersContainer extends StatefulWidget {
  final int charactersLength;
  final Function onSelected;
  TotalCharactersContainer(
      {Key ? key, required this.charactersLength, required this.onSelected})
      : super(key: key);

  @override
  _TotalCharactersContainerState createState() =>
      _TotalCharactersContainerState(
        charactersLength,
      );
}

class _TotalCharactersContainerState extends State<TotalCharactersContainer> {
  int charactersLength;
  bool smallCard = true;

  _TotalCharactersContainerState(this.charactersLength);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14, left: 16, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Text(
                "${S.of(context).totalCharacters.toUpperCase()} ${charactersLength.toString()}",
                style: TextThemes.totalCharacters),
          ),
          InkWell(
            onTap: () {
              setState(() {
                smallCard = !smallCard;
                widget.onSelected(smallCard);
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: SvgPicture.asset(
                  smallCard ? SvgIcons.largeIcons : SvgIcons.smallIcons),
            ),
          ),
        ],
      ),
    );
  }
}
