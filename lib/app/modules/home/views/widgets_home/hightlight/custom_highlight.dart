import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class CustomHighlight extends StatelessWidget {
  const CustomHighlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> sentences = [
      "This is the first sentence.",
      "Welcome to the Marquee example!",
      "Flutter is awesome.",
      "Enjoy the scrolling effect.",
    ];
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MaklumanButton(),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 30,
                child: Marquee(
                  text: sentences
                      .join('  .  '), // Separate sentences with a bullet
                  style: TextStyle(fontSize: 16.0),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 20.0,
                  velocity: 50.0,
                  pauseAfterRound: Duration(seconds: 1),
                  startPadding: 20.0,
                  accelerationDuration: Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MaklumanButton extends StatelessWidget {
  const MaklumanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0)),
      ),
      onPressed: () {
        // Add your button press logic here
      },
      child: const Text(
        "ALERT",
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }
}
