import 'package:breaking_bad/business_logic/cubit/characters_cubit.dart';
import 'package:breaking_bad/constants/strings.dart';
import 'package:breaking_bad/data/web_services/get_all_character.dart';
import 'package:breaking_bad/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BreakingBadApp());
}

class BreakingBadApp extends StatelessWidget {
  const BreakingBadApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersCubit>(
      create: (context) => CharactersCubit(AllCharacter()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          CharactersScreen.CharactersScreenId: (context) => CharactersScreen(),
        },
        initialRoute: 'CharactersScreen',
      ),
    );
  }
}
