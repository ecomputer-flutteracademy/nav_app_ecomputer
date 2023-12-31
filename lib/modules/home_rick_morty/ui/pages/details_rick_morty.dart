import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/widgets/buttons/button_widget.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/widgets/card_informaiton_character.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/widgets/top_details_character_widget.dart';
import 'package:nav_app_ecomputer/theme/app_colors.dart';
import 'package:share_plus/share_plus.dart';

class CharacterRickMortyObject {
  final CharacterModel? character;
  // final int? page;

  CharacterRickMortyObject({
    this.character,
    // this.page,
  });
}

class DetailsRickMorty extends StatelessWidget {
  final CharacterRickMortyObject characterOject;
  const DetailsRickMorty({
    Key? key,
    required this.characterOject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.COLOR_BLACK_GREY,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.COLOR_WHITE,
          ),
        ),
      ),
      body: ListView(
        children: [
          TopDetailsCharacterWidget(
            character: characterOject.character,
          ),
          //DETAILS CHARACTER
          Container(
            // height: 200,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child:

                // GridView.builder(
                //     physics: NeverScrollableScrollPhysics(),
                //     shrinkWrap: true,
                //     itemCount: 50,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 3,
                //         crossAxisSpacing: 10.0,
                //         mainAxisSpacing: 10.0),
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         decoration: BoxDecoration(
                //           color: Colors.blue,
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         child: Center(
                //           child: Text(
                //             'Item $index',
                //             style: TextStyle(fontSize: 20, color: Colors.white),
                //           ),
                //         ),
                //       );
                //     }),

                GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 2,
              ),
              children: [
                CardInformaitonCharacter(
                  title: "Gender",
                  description: characterOject.character?.gender ?? '',
                ),
                CardInformaitonCharacter(
                  title: "Origin",
                  description: characterOject.character?.name ?? '',
                ),
                CardInformaitonCharacter(
                  title: "Type",
                  description: characterOject.character?.status ?? '',
                ),
                CardInformaitonCharacter(
                  title: "Specie",
                  description: characterOject.character?.species ?? '',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: ButtonWidget(
              onPressed: () {
                Share.share('Mira mi página https://flutteracademy.app/',
                    subject: '¡Mira que puedo ofrecerte!');
              },
              text: 'COMPARTIR',
            ),
          )
        ],
      ),
    );
  }
}
