import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/resources/svg_icons.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

class SearchTextField extends StatelessWidget {
//   // final Function onChangedFunction;
  final String? title;
  SearchTextField({Key? key, required this.title}) : super(key: key);

  TextEditingController ? _controller = TextEditingController();
  String ? findValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: FindBarValue.charactersFind,
      onChanged: (value) {
        // FindBarValue.charactersFind = value;
        // context.read()<CharactersBloc>()
        //   ..add(CharactersEvent.find(value: FindBarValue.charactersFind));
        // BlocProvider.of<CharactersBloc>(context)
            // .add(CharactersEvent.find(value: FindBarValue.charactersFind));
        // context.read<CharactersBloc>()..add(CharactersEvent.find(value: value));
      },
      style: TextThemes.hintTextFindBar,
      // controller: _controller,
      focusNode: FocusNode(),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none),
          fillColor: ColorTheme.appBarBackground,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          hintText: title,
          hintStyle: TextThemes.hintTextFindBar,
          prefixIcon: IconButton(
            icon: SvgPicture.asset(SvgIcons.find),
            onPressed: () {},
          ),
          suffixIcon: title == S.of(context).addBarHintTextFindEpisod
              ? null
              : IntrinsicHeight(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      VerticalDivider(
                        color: ColorTheme.textAppearanceOverlineFullName
                            .withOpacity(0.1),
                        indent: 12,
                        endIndent: 12,
                        width: 1,
                        thickness: 1,
                      ),
                      IconButton(
                          icon: SvgPicture.asset(SvgIcons.antenna),
                          onPressed: () {})
                    ],
                  ),
                )),
    );
  }
}
