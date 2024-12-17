import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset('assets/images/quiz_logo.png',
            width: 300, color: const Color.fromARGB(83, 244, 244, 244)),

        //   Opacity(
        //     opacity: 0.3,
        //     child: Image.asset(
        //       'assets/images/quiz_logo.png',
        //       width: 300,
        //     ),
        //   ),
        const SizedBox( 
          width: double.infinity,
          height: 40,
        ),
         Text(
          '     Learn fluttter is the fun way!     ',
          style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(
            Icons.arrow_right_alt,
          ),
          label: const Text(
            'start quiz',
            style: TextStyle(
              color: Color.fromARGB(255, 239, 236, 236),
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
