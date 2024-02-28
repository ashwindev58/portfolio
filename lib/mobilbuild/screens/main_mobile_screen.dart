import 'package:ashwin_k/screens/widget/animatednameandjob.dart';
import 'package:ashwin_k/screens/widget/fadeinimage.dart';
import 'package:flutter/material.dart';

import '../../screens/mainscreeen.dart';
import '../../screens/sec3experiance/sec3experiance.dart';
import '../../screens/sec4skill/sec4skill.dart';
import '../../screens/section2/widgetsection2.dart';

class MobileMainScreen extends StatefulWidget {
  const MobileMainScreen({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<MobileMainScreen> createState() => _MobileMainScreenState();
}

class _MobileMainScreenState extends State<MobileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: 
      [
          FadeInContainer.FadeInImageContainer(constraints: widget.constraints),
          SizedBox(
            height: widget.constraints.maxHeight * 0.025,
          ),
          SlideInColumn(constraints: widget.constraints),
          SizedBox(
            height: widget.constraints.maxHeight * 0.1,
          ),

          AboutMeTittle(constraints: widget.constraints),
          AboutMeDescp(constraints: widget.constraints),

           SizedBox(
            height: widget.constraints.maxHeight * 0.1,
          ),
           ExperienceTittle(constraints: widget.constraints),
           
          ExperienceList(constraints: widget.constraints),

           Container(
                          key: skillKey,
                          child: Sec4Skill(constraints: widget.constraints)),
      ]
      ),
    );
  }
}
