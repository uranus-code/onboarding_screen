import 'package:flutter/material.dart';
import 'package:onboarding_tutorial/constants.dart';
import 'package:onboarding_tutorial/models/onboard.dart';

class OnBoardItem extends StatelessWidget {
  final OnBoard onBoard;
  const OnBoardItem({
    Key? key,
    required this.onBoard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset("assets/images/${onBoard.imageName}"),
        const Spacer(),
        Text(
          onBoard.title,
          style: const TextStyle(
            fontSize: kbigFontSize,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 15),
        Text(
          onBoard.text,
          style: TextStyle(
            fontSize: knormalFontSize,
            color: Colors.grey.shade600,
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
