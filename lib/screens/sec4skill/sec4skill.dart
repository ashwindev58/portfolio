import 'package:ashwin_k/screens/sec4skill/widgets/skillswidget.dart';
import 'package:flutter/material.dart';

import 'widgets/skillists.dart';

class Sec4Skill extends StatefulWidget {
  const Sec4Skill({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<Sec4Skill> createState() => Sec4SkillState();
}

class Sec4SkillState extends State<Sec4Skill> {
  @override
  void initState() {
    constraints = widget.constraints;
    super.initState();
  }

  final ScrollController scrollController = ScrollController();

  late BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    //   print(constraints.maxWidth);
    return Container(
      padding: EdgeInsets.only(
        top: constraints.maxHeight * 0.1,
        bottom: constraints.maxHeight * 0.1,
        left: constraints.maxWidth * 0.1,
        right: constraints.maxWidth * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: constraints.maxWidth * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "#work_skill",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                const Text(
                  "A committed and passionate Flutter developer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height ,
            alignment: Alignment.centerLeft,
            child: RawScrollbar(
              thumbColor: Colors.grey.withOpacity(0.5),
              thumbVisibility: true,
              trackVisibility: true,
          thickness: 10,
              radius: const Radius.circular(15),
              interactive: true,
              scrollbarOrientation: ScrollbarOrientation.top,
              controller: scrollController,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: scrollController,
                reverse: true,padding: EdgeInsets.only(top: constraints.maxHeight*0.02),
                physics: const AlwaysScrollableScrollPhysics(),
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
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.1,
          )
        ],
      ),
    );
  }
}

class SkillWidget extends StatefulWidget {
  final String skillTittle;

  const SkillWidget({
    super.key,
    required this.constraints,
    required this.skilList,
    required this.skillTittle,
  });

  final BoxConstraints constraints;
  final List<String> skilList;

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  bool isonTop = false;

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (e) {
        setState(() {
          isonTop = false;
        });
      },
      onEnter: (e) {
        setState(() {
          isonTop = true;
        });
      },
      child: GestureDetector(
        onTap: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          decoration: BoxDecoration(
            // border: Border.all(
            //   color: isonTop ? Colors.deepPurple : Colors.grey.withOpacity(0.6),
            //   width: isonTop ? 2 : 1.0, // Adjust border width as needed
            // ),
            borderRadius: BorderRadius.circular(
              ((widget.constraints.maxHeight * widget.constraints.maxWidth) /
                      100) *
                  0.0011,
            ),
          ),
          padding: EdgeInsets.all(
              ((widget.constraints.maxHeight * widget.constraints.maxWidth) /
                      100) *
                  0.0031),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.skillTittle,
                style: TextStyle(
                  color: isVisible
                      ? const Color.fromRGBO(103, 58, 183, 1)
                      : isonTop
                          ? const Color.fromRGBO(103, 58, 183, 1)
                          : Colors.grey,
                  fontSize: 19,
                  fontWeight: isVisible
                      ? FontWeight.w900
                      : isonTop
                          ? FontWeight.w900
                          : FontWeight.w500,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: widget.constraints.maxHeight * 0.01,
                    ),
                    for (int i = 0; i < widget.skilList.length; i++)
                      Container(
                        padding: EdgeInsets.only(
                          top: widget.constraints.maxHeight * 0.01,
                        ),
                        child: Text(
                          "  ${i + 1}. ${widget.skilList[i]}",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
