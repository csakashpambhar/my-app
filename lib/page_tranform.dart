import 'package:flutter/material.dart';
import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:slider/depth_page_transformer.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _itemCount = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            child: TransformerPageView(
              scrollDirection: Axis.vertical,
              loop: false, // Set loop to true if you want infinite scrolling
              transformer: DeepthPageTransformer(),
              itemCount: _itemCount,
              itemBuilder: (BuildContext context, int index) {

                return Container(
                  color: index!.isEven ? Colors.blue : Colors.red,
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _itemCount += 1; // Increase itemCount
              });
              print(_itemCount);
            },
            child: Text('Add Page'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_itemCount > 1) {
                  _itemCount -=
                      1; // Decrease itemCount but ensure it's not less than 1
                }
                print(_itemCount);
              });
            },
            child: Text('Remove Page'),
          ),
        ],
      )),
    );
  }
}
