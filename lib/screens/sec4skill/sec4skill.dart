import 'package:flutter/material.dart';

class Sec4Skill extends StatefulWidget {
  const Sec4Skill({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<Sec4Skill> createState() => Sec4SkillState();
}

class Sec4SkillState extends State<Sec4Skill> {
  var flutterskill = [
    'Developing Cross-Platform (Android/iOS) Apps',
    'Flutter Bloc ',
    'Version Controll Using GitHub',
    'Flutter Web Development & Deployment'
        'Widget building ',
    'UI/UX design ',
    'State management',
    'Flutter animations',
    'Flutter navigation',
    'Dart programming language',
    'Flutter packages/plugins integration',
    'Responsive design',
    'Deployment to App Store and Play Store',
    'Integration with backend services',
    'Knowledge of Dart\'s asynchronous programming',
    'Understanding Flutter\'s widget lifecycle',
    'Flutter performance optimization',
    'Integration of third-party libraries in Flutter',
  ];

  var otherSkills = [
    'Microsoft Office )',
    'Appstore and Play Store Deployment',
    'Bard AI',
    'Firebase',
    'HTTP API integration',
    'PHP CodeIgniter (Back end only)',
    'SQL (mentioned twice)',
    'Problem management',
    'Time management',
    'AI Prompt',
    'Positive attitude',
    'ChatGPT',
    'Gemini',
    'Bard',
    'Git',
    'JSON',
  ];

  var softSkills = [
    "Positive attitude",
    "Problem-solving skills",
    "Time management",
    "Effective communication",
    "Team collaboration",
    "Adaptability",
    "Creativity",
    "Critical thinking",
    "Attention to detail",
    "Decision-making",
    "Emotional intelligence",
    "Open-mindedness",
    "Leadership",
    "Interpersonal skills",
    "Self-motivation",
    "Conflict resolution",
    "Empathy",
    "Stress management",
    "Professionalism",
    "Active listening"
  ];

  var proList = [
    'Java',
    'C',
    'Python',
    'Dart',
    'C++',
    'PHP',
    'Oops',
    'Data Structures',
    'LeetCOde',
    'Functional Programming',
    'Code Optimization',
    'Version Control '
        'MVC Architecture',
    'Databases (SQL,MySql,Sqlite)'
  ];

  @override
  void initState() {
    constraints = widget.constraints;
    super.initState();
  }

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
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
          duration: const Duration(milliseconds: 250),
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
