
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
              Container(
                margin: EdgeInsets.only(
                    right: constraints.maxWidth * 0.05,
                    top: constraints.maxHeight * 0.1),
                width: constraints.maxWidth * 0.4,
                height: constraints.maxHeight * 0.7,
                child: Image.network(
                  "https://assets-global.website-files.com/658d38acfad6a31f9d2b5cdb/658d4c0d4f9335e0ffd192f3_image%201%20(1)-p-800.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
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
                        fontSize: 30,
                        letterSpacing:
                            constraints.maxWidth * 0.005,
                        fontWeight: FontWeight.w900),
                  ), SizedBox(
                    height: constraints.maxWidth * 0.005,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.4,
                    child: const Text(
                      '''A passionate and innovative software developer with a knack for crafting elegant solutions to complex problems''',
                      style: TextStyle(
                          color: Colors.grey, fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextSubText(
                          constraints: constraints,
                          tittle: "1+",.
                          subTittle: "Years of work"),
                           SizedBox(
                    width: constraints.maxWidth * 0.05,
                  ),
                          TextSubText(
                          constraints: constraints,
                          tittle: "1+",
                          subTittle: "Project Behind"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
