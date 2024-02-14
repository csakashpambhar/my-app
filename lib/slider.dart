import 'package:flutter/material.dart';


class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.amberAccent,
              margin: EdgeInsets.zero, // Remove any margin
              child: Container(
                width: MediaQuery.of(context).size.width, // Full width
                height: MediaQuery.of(context).size.height, // Full height
                child: Center(
                  child: Text('Full Screen Card'),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.zero, // Remove any margin
              child: Container(
                width: MediaQuery.of(context).size.width, // Full width
                height: MediaQuery.of(context).size.height, // Full height
                child: Center(
                  child: Text('Full Screen Card'),
                ),
              ),
            ),
            Card(
              color: Colors.cyan,
              margin: EdgeInsets.zero, // Remove any margin
              child: Container(
                width: MediaQuery.of(context).size.width, // Full width
                height: MediaQuery.of(context).size.height, // Full height
                child: Center(
                  child: Text('Full Screen Card'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.zero, // Remove any margin
              child: Container(
                width: MediaQuery.of(context).size.width, // Full width
                height: MediaQuery.of(context).size.height, // Full height
                child: Center(
                  child: Text('Full Screen Card'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
