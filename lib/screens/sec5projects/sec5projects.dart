import 'package:flutter/material.dart';

class Sec5Projects extends StatefulWidget {
  const Sec5Projects({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<Sec5Projects> createState() => _Sec5ProjectsState();
}

class _Sec5ProjectsState extends State<Sec5Projects> {
  @override
  void initState() {
    
    constraints = widget.constraints;
    super.initState();
  }

  late BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
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
                  "#projects",
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
                  "Fluttering Success: A Gallery of Impressive Dart Projects",
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
              children: [],
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.1,
          )
        ],
      ),
    );
    ;
  }
}
