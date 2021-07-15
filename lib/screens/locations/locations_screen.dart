import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_null_safety/components/app_bar/search_text_field.dart';
import 'package:rick_and_morty_null_safety/components/app_bar/total_locations.dart';
import 'package:rick_and_morty_null_safety/components/circular_progress.dart';
import 'package:rick_and_morty_null_safety/generated/l10n.dart';
import 'package:rick_and_morty_null_safety/theme/color_theme.dart';
import 'package:rick_and_morty_null_safety/theme/text_theme.dart';

import 'locations_bloc/locations_bloc.dart';

class LocationList extends StatelessWidget {
  const LocationList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationsBloc>(
        create: (BuildContext context) =>
            LocationsBloc()..add(LocationsEvent.initial()),
        child: BlocConsumer<LocationsBloc, LocationsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => customCircularProgress(),
              loading: (_) => customCircularProgress(),
              data: (_data) => Scaffold(
                appBar: AppBar(
                  backgroundColor: ColorTheme.background,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title:
                      SearchTextField(title:S.of(context).appBarHintTextFindLocation),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(50),
                      child: TotalLocation(
                        totalValue: _data.locationsList!.length,
                      )),
                ),
                backgroundColor: ColorTheme.background,
                body: SafeArea(
                  child: ListView.builder(
                      itemCount: _data.locationsList!.length,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     SlideRightRoute(
                            //         page: LocationDetail(
                            //             id: _data.locationsList[index].id)));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            _data.locationsList![index].imageName.toString()),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  color: ColorTheme.appBarBackground,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 12, left: 16),
                                      child: Text(
                                          _data.locationsList![index].name.toString(),
                                          style: TextThemes.profileListTitle),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 16, bottom: 12),
                                      child: Text(
                                        "${_data.locationsList![index].type} \u00b7 ${_data.locationsList![index].measurements}",
                                        style: TextThemes.textAppearanceCaption,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 24),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            );
          },
        ));
  }
}