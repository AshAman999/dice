import 'dart:math';

import 'package:flutter/cupertino.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var random = Random();
  @override
  Widget build(BuildContext context) {
    var num1 = random.nextInt(6) + 1;
    var num2 = random.nextInt(6) + 1;
    var total = num1 + num2;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dice'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Total = $total',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              // color: Colors.grey[300],
              image: DecorationImage(
                fit: BoxFit.fill,
                // assets/3.png
                image: AssetImage("assets/$num1.png"),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              // color: Colors.grey[300],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/$num2.png"),
              ),
            ),
          ),
          CupertinoButton(
            color: Colors.blueAccent,
            child: const Text('Shuffle'),
            onPressed: () {
              var random = Random();
              setState(() {
                num1 = random.nextInt(6) + 1;
                num2 = random.nextInt(6) + 1;
              });
              // ignore: avoid_print
              print(num);
            },
          ),
        ],
      )),
    );
  }
}
