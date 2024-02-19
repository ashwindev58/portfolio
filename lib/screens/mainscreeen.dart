import 'package:flutter/material.dart';

import 'widget/topbar.dart';

//https://harrison-ca54df.webflow.io/home-v1
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();
  bool isScorll = false;

  void _scrollListener() {
    print(scrollController.offset);
    print(scrollController.position);
    if (scrollController.offset != 0) {
      // User has scrolled to the bottom
      setState(() {
        isScorll = true;
      });
    } else if (scrollController.offset == 0) {
      setState(() {
        isScorll = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAppBar(constraints: constraints, isScorll: isScorll),
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: scrollController,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: constraints.maxWidth * 0.25,
                            color: Colors.deepPurple,
                            height: constraints.maxHeight * 0.8,
                          ),
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
                                            tittle: "1+",
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TextSubText extends StatelessWidget {
  final BoxConstraints constraints;

  final String tittle;

  final String subTittle;
  const TextSubText({
    super.key,
    required this.constraints,
    required this.tittle,
    required this.subTittle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tittle,
          style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w900,
              fontSize: 28),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.015,
        ),
         Text(
          subTittle,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
