import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  // const MyButton({Key? key}) : super(key: key);
  final colr;
  final textColr;
  final String buttonText;
  final onClicked;

  MyButton(
      {this.colr, required this.buttonText, this.textColr, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(32.0),
            child: Container(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.09,
                color: colr,
                child: Center(
                  child: Text(
                    buttonText,
                    style: GoogleFonts.rubik(
                        fontSize: (buttonText == 'Const') ? 24 : 30,
                        color: textColr),
                  ),
                ))),
      ),
    );
  }
}

// GestureDetector(
//       onTap: onClicked,
//       child: Padding(
//         padding: const EdgeInsets.all(9.0),
//         child: Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: colr,
//             ),
//             child: Center(
//               child: Text(buttonText,
//                   style: GoogleFonts.rubik(
//                     color: textColr,
//                     fontSize: 30,
//                   )),
//             )),
//       ),
//     );
