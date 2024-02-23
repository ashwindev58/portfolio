import 'package:flutter/material.dart';

import 'screens/mainscreeen.dart';
import 'screens/resposcreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,BoxConstraints constraints) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),debugShowCheckedModeBanner: false,
          home:  constraints.maxWidth<1000? const ResponsiveScreenWarning():const Home(),
          // home:  const TestDAta(),
        );
      }
    );
  }
}


