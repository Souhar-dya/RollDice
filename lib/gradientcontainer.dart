import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class GradientContainer extends StatefulWidget {
  GradientContainer(this.x, this.y, {super.key});
  final Color x;
  final Color y;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var activeDiceimg = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceimg = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            widget.x,
            widget.y,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceimg,
              width: 250,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20)),
                child: const Text("Roll Dice"))
          ],
        ),
      ),
    );
  }
}
