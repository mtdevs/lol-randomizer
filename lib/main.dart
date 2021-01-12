import 'package:flutter/material.dart';
import 'selection.dart';

void main() => runApp(LolRandomizer());

class LolRandomizer extends StatefulWidget {
  @override
  _LolRandomizerState createState() => _LolRandomizerState();
}

class _LolRandomizerState extends State<LolRandomizer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Selection(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF001C27),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
