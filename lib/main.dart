import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'alarm_route.dart';
import 'timer_route.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final isSelected = [false,false];
  var isSelectedAlarm = true;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pinkAccent,
        notchMargin: 6.0,
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side: BorderSide(),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: screenSize.width * 0.4,
              decoration: BoxDecoration(
                color:  isSelectedAlarm
                    ? Colors.pinkAccent
                    : Colors.grey,
              ),
              child: TextButton.icon(
                label: const Text(
                  'アラーム',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                icon: const Icon(
                  Icons.access_alarm,
                  color: Colors.white,
                ),
                onPressed: () {
                  isSelectedAlarm = true;
                  setState(() {});
                },
              ),
            ),
            Container(
              width: screenSize.width * 0.4,
              decoration: BoxDecoration(
                color:  isSelectedAlarm
                    ? Colors.grey
                    : Colors.pinkAccent,
              ),
              child: TextButton.icon(
                label: const Text(
                  'タイマー',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                icon: const Icon(
                  Icons.av_timer,
                  color: Colors.white,
                ),
                onPressed: () {
                  isSelectedAlarm = false;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
      body: isSelectedAlarm
              ? const AlarmPage()
              : const TimerPage(),
    );
  }
}
