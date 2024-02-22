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
            physics: const BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for(int i=0;i<5;i++)
                Padding(
                  padding: EdgeInsets.only(right: constraints.maxWidth*0.015),
                  child: ProjectCard(
                    constraints: constraints,
                    appIconUrl:
                        "https://raw.githubusercontent.com/ashwindev58/images/main/aoujapp.png",
                    isOnAppStore: true,
                    isOnPlayStore: true,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final bool isOnAppStore;

  final String appIconUrl;

  final bool isOnPlayStore;

  const ProjectCard({
    super.key,
    required this.constraints,
    required this.isOnAppStore,
    required this.appIconUrl,
    required this.isOnPlayStore,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: constraints.maxHeight * 0.01,
        top: constraints.maxHeight * 0.01,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(
          (constraints.maxWidth * constraints.maxHeight) * 0.00001,
        )),
      ),
      width: constraints.maxWidth * 0.27,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              right: constraints.maxWidth * 0.02,
              left: constraints.maxWidth * 0.01,
              top: constraints.maxHeight * 0.007,
              bottom: constraints.maxHeight * 0.007,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(
                  appIconUrl, // Replace with your image URL
                ),
              ),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            height: constraints.maxHeight * 0.15,
            width: constraints.maxWidth * 0.07,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.04,
              ),
              const Text(
                "Alouj Construction ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Downloads now @ ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                    ),
                  ),
                  isOnAppStore
                      ? ImageIcon(
                          constraints: constraints,
                          imgUrl:
                              "https://raw.githubusercontent.com/ashwindev58/images/main/appstore.jpeg",
                        )
                      : SizedBox(),
                  isOnPlayStore
                      ? ImageIcon(
                          constraints: constraints,
                          imgUrl:
                              "https://raw.githubusercontent.com/ashwindev58/images/main/plastore.png",
                        )
                      : SizedBox(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageIcon extends StatelessWidget {
  final String imgUrl;

  const ImageIcon({
    super.key,
    required this.constraints,
    required this.imgUrl,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (constraints.maxHeight * constraints.maxWidth / 100) * 0.004,
      height: (constraints.maxHeight * constraints.maxWidth / 100) * 0.004,
      margin: EdgeInsets.all(
          (constraints.maxHeight * constraints.maxWidth / 100) * 0.0004),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.network(
          imgUrl, // Replace with your image URL
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
