import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_and_morty_null_safety/components/circular_progress.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/resources/svg_icons.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';

import 'main_screen_bloc/main_screen_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainScreenBloc>(
      create: (BuildContext context) =>
          MainScreenBloc()..add(MainScreenEvent.initial()),
      child: BlocConsumer<MainScreenBloc, MainScreenState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => customCircularProgress(),
                loading: (_) => customCircularProgress(),
                data: (_data) => Scaffold(
                      body: _data.currentWidget,
                      bottomNavigationBar: BottomNavigationBar(
                        currentIndex: _data.currentIndex,
                        selectedFontSize: 12,
                        unselectedFontSize: 12,
                        selectedItemColor: ColorTheme.textAppearanceOverline,
                        unselectedItemColor: ColorTheme.appBarText,
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: ColorTheme.appBarBackground,
                        items: [
                          BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              SvgIcons.character,
                              color: _data.currentIndex == 0
                                  ? ColorTheme.textAppearanceOverline
                                  : ColorTheme.appBarText,
                            ),
                            label:
                                S.of(context).textAppearanceCaptionCharacters,
                          ),
                          BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              SvgIcons.location,
                              color: _data.currentIndex == 1
                                  ? ColorTheme.textAppearanceOverline
                                  : ColorTheme.appBarText,
                            ),
                            label: S.of(context).textAppearanceCaptionLocation,
                          ),
                          BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              SvgIcons.episode,
                              color: _data.currentIndex == 2
                                  ? ColorTheme.textAppearanceOverline
                                  : ColorTheme.appBarText,
                            ),
                            label: S.of(context).textAppearanceCaptionEpisode,
                          ),
                          BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              SvgIcons.settings,
                              color: _data.currentIndex == 3
                                  ? ColorTheme.textAppearanceOverline
                                  : ColorTheme.appBarText,
                            ),
                            label: S.of(context).settings,
                          ),
                        ],
                        onTap: (index) {
                          context.read<MainScreenBloc>()
                            ..add(MainScreenEvent.selectedView(
                                currentIndex: index));
                        },
                      ),
                    ));
          }),
    );
  }
}