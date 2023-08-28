import 'package:flutter/material.dart';
import 'package:myapp1/text_style.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  var activeDiceImage = 'assets/images/dice-1.png';

  // required is needed for named arguments
  GradientContainer(this.color1, this.color2, this.color3, {Key? key})
      : super(key: key);

  // Alternative Constructor
  // factory GradientContainer.red(Color color1) {
  //   return GradientContainer(color1, Colors.transparent, Colors.transparent)
  // }
  GradientContainer.rgb({Key? key})
      : color1 = Colors.redAccent,
        color2 = Colors.blueAccent,
        color3 = Colors.greenAccent,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 200),
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
        ),
      ),
    );
  }

  void rollDice() {
    activeDiceImage = 'assets/images/dice-3.png';
  }
}


// class GradientContainer extends StatelessWidget {
//   // required is needed for named arguments
//   const GradientContainer({Key? key, required this.colors}) : super(key: key);

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(child: text_style('Hello, World!')),
//     );
//   }
// }
