import 'package:flutter/material.dart';
import 'package:gap_column_row/gap_column_row.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gap Column and Row Example'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              GapColumn(
                gap: 10.0,
                children: [
                  Text('Item 1'),
                  Text('Item 2'),
                  Text('Item 3'),
                ],
              ),
              SizedBox(height: 30),
              GapRow(
                gap: 15.0,
                children: [
                  Text('Item A'),
                  Text('Item B'),
                  Text('Item C'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
