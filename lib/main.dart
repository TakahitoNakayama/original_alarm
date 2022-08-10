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

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        notchMargin: 6.0,
        shape: AutomaticNotchedShape(
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
              width: _screenSize.width * 0.5,
              // color: Colors.black,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border(
                  right: BorderSide()
                )
              ),
              child: TextButton.icon(
                label: Text(
                  'あらーむ',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            // Container(
            //   height: 30,
            //   width: 1,
            //   color: Colors.white,
            // ),
            Container(
              width: _screenSize.width * 0.4,
              // color: Colors.pinkAccent,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  border: Border(
                      left: BorderSide()
                  )
              ),
              child: TextButton.icon(
                label: Text(
                  'あらーむ',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                onPressed: () {},
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
