import 'package:ashwin_k/commons/constants.dart';
import 'package:flutter/material.dart';

class SlideInColumn extends StatefulWidget {
  final BoxConstraints constraints;

  const SlideInColumn({Key? key, required this.constraints}) : super(key: key);

  @override
  _SlideInColumnState createState() => _SlideInColumnState();
}

class _SlideInColumnState extends State<SlideInColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationOpacity;
  late BoxConstraints constraints;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    constraints = widget.constraints;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    // Create an opacity animation
    _animationOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FadeTransition(
        opacity: _animationOpacity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: constraints.maxWidth * 0.1,
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w900,
                  fontSize: 23),
            ),
            SizedBox(
              height: constraints.maxWidth * 0.005,
            ),
            Text(
              "ASHWIN K",
              style: TextStyle(
                  color: Colors.white,
                  fontSize:  isWeb()?30:25,
                  letterSpacing: constraints.maxWidth * 0.005,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: isWeb()?constraints.maxHeight * 0.005:constraints.maxHeight * 0.015,
            ),
            SizedBox(
              width: isWeb()? constraints.maxWidth * 0.4:constraints.maxWidth -10,
              child:  Text(
                '''Adaptable Flutter Developer with a flair for crafting visually appealing and highly functional cross-platform applications. Driven by a commitment to staying ahead in the ever-evolving world of Flutter development.''',
                style: TextStyle(
                    color: Colors.grey, fontSize: isWeb()?18:13),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: isWeb()? MainAxisAlignment.start:MainAxisAlignment.spaceEvenly,
              children: [
                TextSubText(
                  constraints: constraints,
                  title: "1+",
                  subTitle: "Years of work",
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.05,
                ),
                TextSubText(
                  constraints: constraints,
                  title: "10+",
                  subTitle: "Project Behind",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }
}

class TextSubText extends StatelessWidget {
  final BoxConstraints constraints;
  final String title;
  final String subTitle;

  const TextSubText({
    Key? key,
    required this.constraints,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Colors.deepPurple,
          ),
        ),
        SizedBox(height: constraints.maxHeight * 0.01),
        Text(
          subTitle,
          style:  TextStyle(
            fontSize: isWeb()?16:13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
