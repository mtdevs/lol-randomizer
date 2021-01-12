import 'package:flutter/material.dart';
import 'package:lol_random/constants.dart';
import '../utilities/champion.dart';
import '../widgets/bottom_action_button.dart';

class RandomChampion extends StatefulWidget {
  @override
  _RandomChampionState createState() => _RandomChampionState();
}

class _RandomChampionState extends State<RandomChampion> {
  final Champion champion = Champion();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoL Randomizer - Champion'),
      ),
      body: Column(
        children: [
          // Champion image
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Image.network(champion.avatar),
            ),
          ),
          // Champion name and title
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  champion.name,
                  style: kChampionNameTextStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  champion.title,
                  style: kChampionTitleTextStyle,
                ),
              ],
            ),
          ),
          // Champion stats
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // STats left side
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Attack: ',
                                style: kChampionStatTextStyle,
                              ),
                              Text(champion.attack.toString()),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Defense: ',
                                style: kChampionStatTextStyle,
                              ),
                              Text(champion.defense.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Stats right side
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Magic: ',
                                style: kChampionStatTextStyle,
                              ),
                              Text(champion.magic.toString()),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Difficulty: ',
                                style: kChampionStatTextStyle,
                              ),
                              Text(champion.difficulty.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Go back re-roll
          Container(
            height: 60.0,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: BottomActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.red,
                    text: 'Go Back',
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: BottomActionButton(
                    onPressed: () {},
                    color: Colors.black,
                    text: 'Re-Roll',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
