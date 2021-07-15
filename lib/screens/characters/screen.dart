import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_null_safety/components/app_bar/search_text_field.dart';
import 'package:rick_and_morty_null_safety/components/app_bar/total_characters.dart';
import 'package:rick_and_morty_null_safety/components/circular_progress.dart';
import 'package:rick_and_morty_null_safety/components/navigator_animated.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/characters/character_model.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/screens/character/character_screen.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

import 'characters_list_bloc/characters_list_bloc.dart';
import 'widgets/utils.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
        create: (BuildContext context) =>
            CharactersBloc()..add(CharactersEvent.initial()),
        child: BlocConsumer<CharactersBloc, CharactersState>(
          listener: (context, state) {
            state.maybeWhen(
                // error: (_error) => ScaffoldMessenger.of(context)
                //     .showSnackBar(SnackBar(content: Text(_error.toString()))),
                orElse: () {});
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => customCircularProgress(),
              loading: (_) => customCircularProgress(),
              data: (_data) => Scaffold(
                appBar: AppBar(
                  backgroundColor: ColorTheme.background,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: SearchTextField(
                    title: S.of(context).appBarHintText,
                  ),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(50),
                      child: TotalCharactersContainer(
                        charactersLength: _data.characterList!.length,
                        onSelected: (value) {
                          context.read<CharactersBloc>()
                            ..add(CharactersEvent.selectedView(isGrid: value));
                        },
                      )),
                ),
                backgroundColor: ColorTheme.background,
                body: SafeArea(
                    child: _data.isGrid
                        ? _CharactersListView(
                            charactersList: _data.characterList)
                        : _CharactersGridView(
                            charactersList: _data.characterList)),
              ),
            );
          },
        ));
  }
}

class _CharactersGridView extends StatelessWidget {
  final List<Character>? charactersList;
  const _CharactersGridView({Key? key, required this.charactersList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: charactersList!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 24),
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  SlideRightRoute(
                      page: CharacterProfile(id: charactersList![index].id)));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: 120,
                    height: 122,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage(charactersList![index].imageName!),
                      radius: 50,
                    )),
                Text(
                  "${getStatusText(charactersList![index].status!).toUpperCase()}",
                  style: getTextTheme(charactersList![index].status!),
                ),
                Text(
                  "${charactersList![index].fullName}",
                  style: TextThemes.fullNameBigCard,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                Text(
                  "${charactersList![index].race} ${getGenderText(charactersList![index].gender!)}",
                  style: TextThemes.textAppearanceCaption,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                )
              ],
            ),
          );
        });
  }
}

class _CharactersListView extends StatelessWidget {
  final List<Character>? charactersList;
  const _CharactersListView({Key? key, @required this.charactersList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: charactersList!.length,
      itemBuilder: (_, index) {
        return Container(
          margin: EdgeInsets.only(top: 24, left: 16),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  SlideRightRoute(
                      page: CharacterProfile(id: charactersList![index].id)));
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 18),
                  width: 74,
                  height: 74,
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage(charactersList![index].imageName!),
                    radius: 50,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${getStatusText(charactersList![index].status!).toUpperCase()}",
                        style: getTextTheme(charactersList![index].status!),
                      ),
                      Text(
                        "${charactersList![index].fullName}",
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextThemes.textAppearanceOverlineFullName,
                      ),
                      Text(
                        "${charactersList![index].race} ${getGenderText(charactersList![index].gender!)}",
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextThemes.textAppearanceCaption,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
