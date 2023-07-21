import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/cubit/characters/characters_cubit.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/widgets/circle_color_status.dart';

class HomeRickMorty extends StatelessWidget {
  const HomeRickMorty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      bloc: locator<CharactersCubit>()..init(),
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: ListView.builder(
              itemCount: state.characters.length,
              itemBuilder: (context, index) {
                // return Text(state.characters[index].name ?? '');

                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 6,
                              child: Container(
                                height: double.infinity,
                                child: Image.network(
                                  state.characters[index].image ?? '',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Flexible(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.characters[index].name ?? '',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CircleColorStatus(
                                              status: state.characters[index]
                                                      .status ??
                                                  ''),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            state.characters[index].status ??
                                                '',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
