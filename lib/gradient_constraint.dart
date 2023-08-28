import 'package:flutter/material.dart';
import 'package:myapp1/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;

  // required is needed for named arguments
  const GradientContainer(this.color1, this.color2, this.color3, {Key? key})
      : super(key: key);

  // Alternative Constructor
  // factory GradientContainer.red(Color color1) {
  //   return GradientContainer(color1, Colors.transparent, Colors.transparent)
  // }
  const GradientContainer.rgb({Key? key})
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
      child: const Center(
        child: DiceRoller(),
      ),
    );
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
