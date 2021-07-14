// import 'package:flutter/material.dart';
// import 'package:rick_and_morty_null_safety/components/app_bar/total_characters.dart';
// import 'package:rick_and_morty_null_safety/components/circular_progress.dart';

// class CharactersScreen extends StatelessWidget {
//   const CharactersScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<CharactersBloc>(
//         create: (BuildContext context) =>
//             CharactersBloc()..add(CharactersEvent.initial()),
//         child: BlocConsumer<CharactersBloc, CharactersState>(
//           listener: (context, state) {
//             state.maybeWhen(error: (_error) => {}, orElse: () {});
//           },
//           builder: (context, state) {
//             return state.maybeMap(
//               orElse: () => customCircularProgress(),
//               loading: (_) => customCircularProgress(),
//               error: (error) => Scaffold(
//                 body: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(),
//                     Text(error.message),
//                     ElevatedButton(
//                         onPressed: () {
//                           context.read<CharactersBloc>()
//                             ..add(CharactersEvent.initial());
//                         },
//                         child: Text(S.of(context).repeat))
//                   ],
//                 ),
//               ),
//               data: (_data) => Scaffold(
//                 appBar: AppBar(
//                   backgroundColor: ColorTheme.background,
//                   elevation: 0,
//                   automaticallyImplyLeading: false,
//                   title: BlocProvider.value(
//                     value: BlocProvider.of<CharactersBloc>(context),
//                     child: SearchTextField(S.of(context).appBarHintText),
//                   ),

//                   // SearchTextField(S.of(context).appBarHintText, (value) {
//                   //   context.read<CharactersBloc>()
//                   //     ..add(CharactersEvent.find(value: value));
//                   // }),
//                   bottom: PreferredSize(
//                       preferredSize: Size.fromHeight(50),
//                       child: TotalCharactersContainer(
//                         charactersLength: _data.characterList.length,
//                         onSelected: (value) {
//                           context.read<CharactersBloc>()
//                             ..add(CharactersEvent.selectedView(isGrid: value));
//                         },
//                       )),
//                 ),
//                 backgroundColor: ColorTheme.background,
//                 body: SafeArea(
//                     child: _data.isGrid
//                         ? CharactersListView(
//                             charactersList: _data.characterList)
//                         : CharactersGridView(
//                             charactersList: _data.characterList)),
//               ),
//             );
//           },
//         ));
//   }
// }

import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}