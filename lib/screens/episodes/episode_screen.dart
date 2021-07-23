import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_null_safety/components/app_bar/search_text_field.dart';
import 'package:rick_and_morty_null_safety/components/circular_progress.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/screens/episodes/widgets/utils.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

import 'episodes_bloc/episodes_bloc.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EpisodesBloc>(
      create: (BuildContext context) =>
          EpisodesBloc()..add(EpisodesEvent.initial()),
      child: BlocConsumer<EpisodesBloc, EpisodesState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => customCircularProgress(),
              loading: (_) => customCircularProgress(),
              data: (_data) => DefaultTabController(
                length: _data.season!.length,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: ColorTheme.background,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    title: SearchTextField(
                        title: S.of(context).addBarHintTextFindEpisod),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(50),
                      child: TabBar(
                        indicatorColor:
                            ColorTheme.textAppearanceOverlineFullName,
                        labelStyle: TextThemes.tabBarLable,
                        labelPadding: EdgeInsets.symmetric(horizontal: 18),
                        isScrollable: true,
                        tabs: getTabs(_data.season!, S.of(context).season),
                      ),
                    ),
                  ),
                  backgroundColor: ColorTheme.background,
                  body: SafeArea(
                    child: TabBarView(children: getTabBarView(_data.season!)),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class GetTabBarView extends StatelessWidget {
  final int? seasonId;
  const GetTabBarView({Key? key, required this.seasonId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EpisodesBloc>(
      create: (BuildContext context) =>
          EpisodesBloc()..add(EpisodesEvent.selectSeason(seasonId: seasonId)),
      child: BlocConsumer<EpisodesBloc, EpisodesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => customCircularProgress(),
              loading: (_) => customCircularProgress(),
              data: (_data) => ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: _data.episodes!.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     SlideRightRoute(
                        //         page: EpisodeProfile(
                        //       episodeId: _data.episodes[index].id,
                        //     )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 26, left: 16),
                        child: Row(children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        _data.episodes![index].imageName!),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            width: 300,
                            margin: EdgeInsets.only(
                              left: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "${S.of(context).seria.toUpperCase()} ${_data.episodes![index].series}",
                                    style: TextThemes.overline),
                                Text("${_data.episodes![index].name}",
                                    style: TextThemes
                                        .textAppearanceOverlineFullName,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false),
                                Text(
                                    "${_data.episodes![index].getDateToRuMonth()}",
                                    style: TextThemes.profileEpisodeDate)
                              ],
                            ),
                          ),
                        ]),
                      ),
                    );
                  }));
        },
      ),
    );
  }
}
