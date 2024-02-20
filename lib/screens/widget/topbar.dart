
import 'package:ashwin_k/screens/mainscreeen.dart';
import 'package:flutter/material.dart';


class TopAppBar extends StatelessWidget {
  final BoxConstraints constraints;
  final bool isScorll;
  const TopAppBar({
    super.key,
    required this.constraints, required this.isScorll,
  });

  @override
  Widget build(BuildContext context) {
    return   AnimatedContainer(duration: const Duration(milliseconds: 250),
      height: constraints.maxHeight * 0.13,
      margin: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AnimatedContainer(duration: const Duration(milliseconds: 250),
            width: constraints.maxWidth * 0.25,
            height: constraints.maxHeight * 0.13,
            decoration:  BoxDecoration(
              color: isScorll?null: Colors.deepPurple,
            ),
            padding: EdgeInsets.only(left: constraints.maxWidth * 0.071),
            child: const Center(
              child: Text(
                "ASHWIN K",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            children: [
              ApBarButton(
                onPressed: () {
                  scrollToAboutMe( aboutMeKey);
                },
                text: "About",
              ),
              ApBarButton(
                onPressed: () {
                  scrollToAboutMe( aboutMeKey2);
                },
                text: "Skills",
              ),
              ApBarButton(
                onPressed: () {
                  scrollToAboutMe( aboutMeKey3);
                },
                text: "Experiance",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ApBarButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ApBarButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),
      ),
    );
  }
}
