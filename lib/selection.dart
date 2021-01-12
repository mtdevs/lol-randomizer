import 'package:flutter/material.dart';
import 'constants.dart';
import 'selection_card.dart';
import 'screens/random_champion.dart';

class Selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoL Randomizer'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            height: 60.0,
            child: Center(
              child: Text(
                'Pick A Random:',
                style: kPickRandomizerText,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SelectionCard(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RandomChampion(),
                        ),
                      );
                    },
                    label: 'Champion',
                    imagePath: kPosMidImgPath,
                  ),
                ),
                Expanded(
                  child: SelectionCard(
                    onPressed: () {},
                    label: 'Team Comp',
                    imagePath: kPosBotImgPath,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SelectionCard(
                    onPressed: () {},
                    label: 'Champ By Lane',
                    imagePath: kPosJungleImgPath,
                  ),
                ),
                Expanded(
                  child: SelectionCard(
                    onPressed: () {},
                    label: 'Champ By Role',
                    imagePath: kPosSupportImgPath,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
