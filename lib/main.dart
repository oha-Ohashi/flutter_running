// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter_application_kaikatsu/ffdarts/base.dart';
import 'package:flutter_application_kaikatsu/ffdarts/history.dart';
import 'package:flutter_application_kaikatsu/ffdarts/mapchan.dart';

import 'dart:async';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
//import 'package:background_currentlocationcation/background_currentlocationcation.dart';

void main() {
  runApp(const MyApp4());
}


class MyApp4 extends StatefulWidget {
  const MyApp4({super.key});

  @override
  State<MyApp4> createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> {
  late String _minsec;
  late Timer _everySecond;
  Location location = new Location();
  LocationData _currentlocation = LocationData.fromMap(Map());

  String _set_minsec(){
    return(
      "${DateTime.now().minute}:${DateTime.now().second}" 
    );
  }
  mi() async {
    //Location location = new Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _currentlocationcationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    location.onLocationChanged.listen((LocationData currentlocation) {
      setState(() {
        _currentlocation = currentlocation;
      });
    });
    //_currentlocationcationData = await location.getLocation();
    //print("Location: ${_currentlocationcationData.latitude}, ${_currentlocationcationData.longitude}");
  }

  @override
  void initState() {
    super.initState();

    // sets first value
    _minsec = _set_minsec();

    // defines a timer 
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        _minsec = _set_minsec();
        //print(_minsec);
      });
    });
    
    mi();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: BaseWidget(currenttime: _minsec, currentlocation: _currentlocation),
      routes: <String, WidgetBuilder> {
        '/base': (BuildContext context) => BaseWidget(currenttime: _minsec, currentlocation: _currentlocation,),
        '/history': (BuildContext context) => HistoryWidget(),
        '/mapchan': (BuildContext context) => MapchanWidget(),
      },
    );
  }
}


//////////////////////////////////////////////////
///
///
///
///
///
///
///
///
///
///
///
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
