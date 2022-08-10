import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const AlarmPage(title: 'アラーム'),
    );
  }
}

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {

  final isSelected = [false,false];
  var isSelectedAlarm = true;

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
              width: _screenSize.width * 0.4,
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
              width: _screenSize.width * 0.4,
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
      body: Center(
        child: Column(
        ),
      ),
    );
  }
}
