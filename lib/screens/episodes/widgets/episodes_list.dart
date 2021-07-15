import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_null_safety/components/circular_progress.dart';
import 'package:rick_and_morty_null_safety/components/navigator_animated.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/screens/episodes/episodes_bloc/episodes_bloc.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

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
                          // Container(
                          //   width: 60,
                          //   height: 60,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10)),
                          //   child: Image.asset(_data.episodes[index].imageName),
                          // ),
                          Container(
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
                                        .textAppearanceOverlineFullName),
                                Text("${_data.episodes![index].premiere}",
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
