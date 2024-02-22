import 'package:flutter/material.dart';

import '../sec4skill.dart';
import 'skillists.dart';

class ScrollWidgets extends StatefulWidget {
  final BoxConstraints constraints;
  const ScrollWidgets({super.key, required this.constraints});

  @override
  State<ScrollWidgets> createState() => _ScrollWidgetsState();
}

class _ScrollWidgetsState extends State<ScrollWidgets> {

  final ScrollController scrollController = ScrollController();
  late BoxConstraints constraints;
  @override
  void initState() {
    constraints = widget.constraints;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
    Scrollbar(
                thumbVisibility: true,
                controller: scrollController,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SkillWidget(
              constraints: constraints,
              skillTittle: "Programming Languages",
              skilList: proList,
            ),
            SkillWidget(
                constraints: constraints,
                skillTittle: "Flutter Skills",
                skilList: flutterskill),
            SkillWidget(
                constraints: constraints,
                skillTittle: "Soft Skills",
                skilList: softSkills),
            SkillWidget(
                constraints: constraints,
                skillTittle: "Others",
                skilList: otherSkills),
          ],
        ),
      ),
    );
  }
}
