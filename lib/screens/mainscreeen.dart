import 'package:ashwin_k/screens/sec3experiance/sec3experiance.dart';
import 'package:ashwin_k/screens/sec4skill/sec4skill.dart';
import 'package:ashwin_k/screens/sec5projects/sec5projects.dart';
import 'package:ashwin_k/screens/section2/widgetsection2.dart';
import 'package:flutter/material.dart';

import 'widget/nameimagesection.dart';
import 'widget/topbar.dart';

final GlobalKey aboutMeKey = GlobalKey();
final GlobalKey experianceKey2 = GlobalKey();
final GlobalKey skillKey = GlobalKey();

//https://harrison-ca54df.webflow.io/home-v1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();

  bool isScorll = false;

  void _scrollListener() {
    // print(scrollController.offset);
    // print(scrollController.position);
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
                      NameImageSection1(constraints: constraints),
                      SizedBox(
                        height: constraints.maxHeight * 0.051,
                      ),
                      Container(
                        key: aboutMeKey,
                        child: WidgetSection2(
                          constraints: constraints,
                        ),
                      ),
                      Container(
                          key: experianceKey2,
                          child: Sec3Experiance(
                            constraints: constraints,
                          )),
                      SizedBox(
                        height: constraints.maxHeight * 0.051,
                      ),
                      Container(
                          key: skillKey,
                          child: Sec4Skill(constraints: constraints)),
                      SizedBox(
                        height: constraints.maxHeight * 0.051,
                      ),
                      Sec5Projects(constraints: constraints)
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

void scrollToAboutMe(GlobalKey key) {
  Scrollable.ensureVisible(key.currentContext!);
}
