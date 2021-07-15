import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_null_safety/components/app_bar/arrow_back_app_bar_transparent.dart';
import 'package:rick_and_morty_null_safety/components/circular_progress.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/character_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/episode_model.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/screens/character/widget/utils.dart';
import 'package:rick_and_morty_null_safety/screens/characters/widgets/utils.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

import 'character_bloc/character_bloc.dart';

class CharacterProfile extends StatelessWidget {
  final String? id;
  CharacterProfile({Key? key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharacterProfileBloc>(
        create: (BuildContext context) =>
            CharacterProfileBloc()..add(CharacterProfileEvent.initial(id: id)),
        child: BlocConsumer<CharacterProfileBloc, CharacterProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => customCircularProgress(),
                loading: (_) => customCircularProgress(),
                data: (_data) => Scaffold(
                      appBar: PreferredSize(
                        preferredSize: Size.fromHeight(50.0),
                        child: AppBarArrowBack(
                          title: false,
                          arrowBackButton: true,
                        ),
                      ),
                      extendBodyBehindAppBar: true,
                      backgroundColor: ColorTheme.background,
                      body: SingleChildScrollView(
                        child: Stack(
                          children: [
                            _BigImagePosition(character: _data.character),
                            _CharacterProfileContent(
                              character: _data.character,
                            ),
                            Positioned(
                                top: 218,
                                child: Container(
                                  color: ColorTheme.background,
                                  height: 65,
                                  width: MediaQuery.of(context).size.height,
                                )),
                            _CircleAvatarProfile(character: _data.character),
                          ],
                        ),
                      ),
                    ));
          },
        ));
  }
}


class _BigImagePosition extends StatelessWidget {
  final Character? character;
  const _BigImagePosition({Key? key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: MediaQuery.of(context).size.height / 2.5,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
          character!.imageName.toString(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


class _CharacterProfileContent extends StatelessWidget {
  final Character? character;
  const _CharacterProfileContent({Key? key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 218),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        color: ColorTheme.background,
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Text(
              '${character!.fullName}',
              style: TextThemes.textAppearanceHeadline4,
            ),
            Text(
              '${getStatusText(character!.status!).toUpperCase()}',
              style: getTextTheme(character!.status!),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              '${character!.about}',
              style: TextThemes.profileDescriptionStyle,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getColumTitleContent(S.of(context).gender,
                      "${getGenderText(character!.gender!)}"),
                getColumTitleContent(S.of(context).race, "${character!.race}"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            character!.placeOfBirth == null
                ? getRowTitleContent(
                    S.of(context).place, "${S.of(context).unknow}", () {})
                : getRowTitleContent(
                    S.of(context).place, "${character!.placeOfBirth!.name}", () {
                    // Navigator.push(context,
                    //     SlideRightRoute(page: LocationDetail(id: location.id)));
                  }),
            const SizedBox(
              height: 36,
            ),
            Divider(
              color: ColorTheme.profileDivenderColor,
              height: 2,
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).textAppearanceCaptionEpisode,
                    style: TextThemes.profileListTitle),
                TextButton(
                  onPressed: () {},
                  child: Text(S.of(context).textAppearanceCaptionEpisodeAll,
                      style: TextThemes.profileRowTitle),
                )
              ],
            ),
            _EpisodeListView(
              episodes: character!.sortedEpisode(),
            ),
          ],
        ),
      ),
    );
  }
}

class _EpisodeListView extends StatelessWidget {
  final List<Episode>? episodes;
  const _EpisodeListView({Key? key, this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: episodes!.length,
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.only(top: 24),
            child: Row(children: [
              Container(
                  width: 74,
                  height: 74,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(episodes![index].imageName!),
                        fit: BoxFit.cover),
                  )),
              // child:
              //     Image.network(episodes[index].imageName, fit: BoxFit.cover),
              // ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 9),
                width: 213,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "${S.of(context).seria.toUpperCase()} ${episodes![index].series}",
                        style: TextThemes.overline),
                    Text("${episodes![index].name}",
                        style: TextThemes.textAppearanceOverlineFullName),
                    Text("${episodes![index].getDateToRuMonth()}",
                        style: TextThemes.profileEpisodeDate)
                  ],
                ),
              ),
              IconButton(
                  color: ColorTheme.textAppearanceOverlineFullName,
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     SlideRightRoute(
                    //         page:
                    //             EpisodeProfile(episodeId: episodes[index].id)));
                  })
            ]),
          );
        });
  }
}

class _CircleAvatarProfile extends StatelessWidget {
  final Character? character;
  const _CircleAvatarProfile({Key? key, this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 138,
      left: 123,
      child: Container(
        width: 150,
        height: 150,
        child: CircleAvatar(
          backgroundColor: ColorTheme.background,
          radius: 50,
          child: Container(
            width: 142,
            height: 142,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                character!.imageName.toString(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}