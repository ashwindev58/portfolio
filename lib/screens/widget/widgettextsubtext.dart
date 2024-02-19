
import 'package:flutter/material.dart';

class TextSubText extends StatelessWidget {
  final BoxConstraints constraints;

  final String tittle;

  final String subTittle;
  const TextSubText({
    super.key,
    required this.constraints,
    required this.tittle,
    required this.subTittle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tittle,
          style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w900,
              fontSize: 28),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.015,
        ),
         Text(
          subTittle,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
