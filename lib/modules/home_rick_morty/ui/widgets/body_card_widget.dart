import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/widgets/circle_color_status.dart';

class BodyCardWidget extends StatelessWidget {
  final CharacterModel characterModel;
  const BodyCardWidget({Key? key, required this.characterModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Row(
              children: [
                Flexible(
                  flex: 6,
                  child: SizedBox(
                    height: double.infinity,
                    child: Image.network(
                      characterModel.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           characterModel.name ?? '',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              CircleColorStatus(
                                  status: characterModel.status ?? ''),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                characterModel.status ?? '',
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
  }
}
