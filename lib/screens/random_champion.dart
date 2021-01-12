import 'package:flutter/material.dart';
import 'package:lol_random/constants.dart';

class RandomChampion extends StatefulWidget {
  @override
  _RandomChampionState createState() => _RandomChampionState();
}

class _RandomChampionState extends State<RandomChampion> {
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
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Image.network(
                'http://ddragon.leagueoflegends.com/cdn/img/champion/loading/Aatrox_0.jpg',
              ),
            ),
          ),
          // Champion name and title
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Aatrox',
                  style: kChampionNameTextStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'the Darkin Blade',
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
                          child: Text(
                            'Attack: 8',
                            style: kChampionStatTextStyle,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Defense: 4',
                            style: kChampionStatTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // STats right side
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Magic: 3',
                            style: kChampionStatTextStyle,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Difficulty: 4',
                            style: kChampionStatTextStyle,
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
            height: 80.0,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Go Back',
                        style: kChampionStatTextStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Re-Roll',
                        style: kChampionStatTextStyle,
                      ),
                    ),
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
