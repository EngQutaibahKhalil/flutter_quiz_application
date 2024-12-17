import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });
   
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style:
       ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 9, 47, 77),
        foregroundColor: const Color.fromARGB(255, 247, 247, 247),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
