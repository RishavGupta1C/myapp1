import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp1/text_style.dart';

final randomizer = Random();

// We can add const canstructor here
class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore tells flutter that this class is private to this file and won't be able to call even if imported
// As state object can change we don't add const construbtor
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    // set State using anonymous function
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; // gives random numbers between 1 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        // Sized Box is a special widget which has a fixed width and height
        // Unlike others whose size depends on the content inside
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(left: 10, right: 10),
            backgroundColor: Colors.green,
          ),
          child: const text_style('Roll Dice'),
        ),
      ],
    );
  }
}
