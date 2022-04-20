import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var count = 0;

  increse() {
    setState(() {
      count++;
    });
  }

  decrease() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('카운터'),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            children: [
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$count', style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 100.0
                      ),)
                    ]
                ),
              ),
              ElevatedButton(onPressed: (){
                increse();
              }, child: Text('+', style: TextStyle(fontSize: 30.0)), style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(70)
              )),
              ElevatedButton(onPressed: (){
                decrease();
              }, child: Text('-', style: TextStyle(fontSize: 30.0),), style: ElevatedButton.styleFrom(
                  primary: (count < 1) ? Colors.grey : Colors.blue,
                  minimumSize: const Size.fromHeight(70)
              ))
            ],
          ),
        ),
      ),
    );
  }
}
