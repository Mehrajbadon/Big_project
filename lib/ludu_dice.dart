import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xDDB7E3FF);
    return Scaffold(
      appBar: AppBar(title: Text("Ludu Dice"),
        backgroundColor: myColor,),
      body: Column(
        children: [
          Text("Hello world"),
          ElevatedButton(onPressed: () {
    Navigator.pop(context);
    }, child: Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ludu Dice"),
                  Icon(Icons.sports_volleyball)
                ],
              ),
      ),
    ))
        ],
      ),
    );
  }
}
