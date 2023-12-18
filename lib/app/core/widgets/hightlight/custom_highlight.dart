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
            MaklumanButton(),
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

// class CustomTopicBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(right: 20),
//       padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//       child: CustomPaint(
//         painter: CustomPolygonPainter(),
//         child: const Center(
//           child: Text(
//             'MAKLUMAN',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomPolygonPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..color = Colors.green // Set background color to green
//       ..style = PaintingStyle.fill;

//     Path path = Path();
//     path.moveTo(0, size.height); // Start from bottom-left
//     path.lineTo(size.width, size.height); // Move to bottom-right
//     path.lineTo(size.width, 0); // Move to top-right
//     path.lineTo(size.width - 10, 0); // Add extra spike on the top right
//     path.close(); // Close the path (complete the polygon)

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

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
      child: Text(
        "Makluman",
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }
}
