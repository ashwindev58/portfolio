
import 'package:ashwin_k/screens/widget/animatednameandjob.dart';
import 'package:ashwin_k/screens/widget/backgroundpurplecontainer.dart';
import 'package:flutter/material.dart';

import 'fadeinimage.dart';


class NameImageSection1 extends StatelessWidget {
  final BoxConstraints constraints;
  const NameImageSection1({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //   width: constraints.maxWidth * 0.25,
        //   color: Colors.deepPurple,
        //   height: constraints.maxHeight * 0.8,
        // ),
        AnimatedSlideContainer(constraints: constraints),
        Container(
          // height: 150,
          alignment: AlignmentDirectional.bottomEnd,
          width: double.infinity,
          margin: EdgeInsets.only(
            left: constraints.maxWidth * 0.1,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
          
          
              FadeInContainer(constraints: constraints),
              SlideInColumn(constraints: constraints),
            
            ],
          ),
        ),
      ],
    );
  }
}
