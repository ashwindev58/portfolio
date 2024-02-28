import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../commons/constants.dart';

class FadeInContainer extends StatefulWidget {
  final BoxConstraints constraints;

  const FadeInContainer.FadeInImageContainer(
      {super.key, required this.constraints});
  @override
  _FadeInContainerState createState() => _FadeInContainerState();
}

class _FadeInContainerState extends State<FadeInContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late BoxConstraints constraints;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    constraints = widget.constraints;
    _controller = AnimationController(
      duration: Duration(seconds: 2), // Set the duration of the animation
      vsync: this,
    );

    // Create a Tween animation
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isWeb()
          ? EdgeInsets.only(
              right: constraints.maxWidth * 0.05,
              top: constraints.maxHeight * 0.1,
            )
          : null,
      width: isWeb() ? constraints.maxWidth * 0.4 : constraints.maxWidth,
      height:
          isWeb() ? constraints.maxHeight * 0.65 : constraints.maxHeight * 0.5,
      child: FadeTransition(
        opacity: _animation,
        child: Image.network(
          "https://assets-global.website-files.com/658d38acfad6a31f9d2b5cdb/658d4c0d4f9335e0ffd192f3_image%201%20(1)-p-800.jpg",
          fit: BoxFit.cover,
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
