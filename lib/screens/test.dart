import 'package:flutter/material.dart';

class TestDAta extends StatefulWidget {
  const TestDAta({super.key});

  @override
  State<TestDAta> createState() => _TestDAtaState();
}

List<DateTime> dateList = [
  DateTime(2024, 2, 19, 10, 30), // Year, Month, Day, Hour, Minute
  DateTime(2024, 2, 20, 10, 30), // Year, Month, Day, Hour, Minute
  DateTime(2024, 2, 21, 10), // Year, Month, Day, Hour, Minute
  DateTime(2024, 2, 22, 15, 45),
  DateTime(2024, 2, 23, 12, 0),
];

class _TestDAtaState extends State<TestDAta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Future"),
            for (int i = 0; i < dateList.length; i++)
              dateList[i].isAfter(DateTime.now())
                  ? Text(dateList[i].toString())
                  : const SizedBox(),

                  SizedBox(height: 250,),

                  const Text("Future"),
            for (int i = 0; i < dateList.length; i++)
              dateList[i].isBefore(DateTime.now())
                  ? Text(dateList[i].toString())
                  : const SizedBox(),

                   const Text("present"),
           
          ],
        ),
      ),
    );
  }
}
