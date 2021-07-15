import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty_null_safety/components/navigator_animated.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/character_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/location_model.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/resources/svg_icons.dart';
import 'package:rick_and_morty_null_safety/screens/character/character_screen.dart';
import 'package:rick_and_morty_null_safety/screens/characters/widgets/utils.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

import 'location_bloc/location_bloc.dart';

class LocationDetail extends StatelessWidget {
  final String? id;
  const LocationDetail({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
        create: (BuildContext context) =>
            LocationBloc()..add(LocationEvent.initial(id: id)),
        child: BlocConsumer<LocationBloc, LocationState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => Text('Error'),
                loading: (_) => CircularProgressIndicator(),
                data: (_data) => Scaffold(
                      appBar: AppBar(
                          automaticallyImplyLeading: true,
                          leadingWidth: 90,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          leading: Container(
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
                                }),
                          )),
                      extendBodyBehindAppBar: true,
                      backgroundColor: ColorTheme.background,
                      body: SingleChildScrollView(
                        child: Stack(
                          children: [
                            _BigImageLocationPosition(location: _data.location),
                            Container(
                              decoration: BoxDecoration(
                                color: ColorTheme.background,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(26.0),
                                    topRight: Radius.circular(26.0)),
                              ),
                              margin: EdgeInsets.only(top: 251),
                              width: MediaQuery.of(context).size.width,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 34),
                                      Text(
                                        _data.location!.name.toString(),
                                        style: TextThemes.locationDetailH1,
                                      ),
                                      Text(
                                        "${_data.location!.type} \u00b7 ${_data.location!.measurements}",
                                        style: TextThemes.textAppearanceCaption,
                                      ),
                                      const SizedBox(
                                        height: 32,
                                      ),
                                      Text(
                                        _data.location!.about.toString(),
                                        style:
                                            TextThemes.profileDescriptionStyle,
                                      ),
                                      const SizedBox(
                                        height: 36,
                                      ),
                                      Text(
                                          S
                                              .of(context)
                                              .textAppearanceCaptionCharacters,
                                          style: TextThemes.profileListTitle),
                                      _LocationCharacters(
                                        characters: _data.location!.characters,
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
          },
        ));
  }
}

class _BigImageLocationPosition extends StatelessWidget {
  final Location? location;
  const _BigImageLocationPosition({Key? key, this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(location!.imageName!,),
                fit: BoxFit.fill)),
      ),
    );
  }
}

class _LocationCharacters extends StatelessWidget {
  final List<Character>? characters;
  const _LocationCharacters({Key? key, this.characters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: characters!.length,
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.only(top: 24),
            child: Row(children: [
              Container(
                // margin: EdgeInsets.only(right: 18),
                width: 74,
                height: 74,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(characters![index].imageName!),
                  radius: 50,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 9),
                width: 213,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "${getStatusText(characters![index].status!).toUpperCase()}",
                        style: getTextTheme(characters![index].status!)),
                    Text(
                      "${characters![index].fullName}",
                      style: TextThemes.textAppearanceOverlineFullName,
                    ),
                    Text(
                      "${characters![index].race} ${getGenderText(characters![index].gender!)}",
                      style: TextThemes.textAppearanceCaption,
                    )
                  ],
                ),
              ),
              IconButton(
                  color: ColorTheme.textAppearanceOverlineFullName,
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                        context,
                        SlideRightRoute(
                            page: CharacterProfile(id: characters![index].id)));
                  })
            ]),
          );
        });
  }
}
