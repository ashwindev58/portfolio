import 'package:flutter/material.dart';

class Sec4Skill extends StatefulWidget {
  const Sec4Skill({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<Sec4Skill> createState() => Sec4SkillState();
}

class Sec4SkillState extends State<Sec4Skill> {
  @override
  void initState() {
    constraints=widget.constraints;
    super.initState();
  }
  late BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: constraints.maxHeight * 0.1,
        horizontal: constraints.maxWidth * 0.1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  "A creative and dedicated Flutter developer",
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
          
          
        ],
      ),
    );
  }
}