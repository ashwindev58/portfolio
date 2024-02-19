import 'package:flutter/material.dart';

class AnimatedSlideContainer extends StatefulWidget {
  final BoxConstraints constraints;

  const AnimatedSlideContainer({super.key, required this.constraints});
  @override
  _AnimatedSlideContainerState createState() => _AnimatedSlideContainerState();
}

class _AnimatedSlideContainerState extends State<AnimatedSlideContainer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late BoxConstraints constraints;

  @override
  void initState() {
    super.initState();
    constraints=widget.constraints;
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, -1.0), // Start from the top
      end: Offset(0, 0), // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Uncomment the line below if you want the animation to play automatically on screen load
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return  SlideTransition(
          position: _offsetAnimation,
          child:Container(
          width: constraints.maxWidth * 0.25,
          color: Colors.deepPurple,
          height: constraints.maxHeight * 0.8,
        ),
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

