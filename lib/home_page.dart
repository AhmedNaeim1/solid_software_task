import 'dart:math';

import 'package:flutter/material.dart';

/// The HomePage widget represents the main page of the application.
///
/// This widget is responsible for displaying a centered column with a
/// text widget and changing the background color when tapped. It maintains
/// the state of the background color and updates it using the `setState`method.
///
class HomePage extends StatefulWidget {
  /// Constructs a new instance of the HomePage widget.
  const HomePage();

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  /// The background color of the home page.
  Color backgroundColor = _generateRandomColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          backgroundColor = _generateRandomColor();
        });
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello There',
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Color _generateRandomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
