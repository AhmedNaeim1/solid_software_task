import 'package:flutter/material.dart';
import 'package:solid_software_task/home_page.dart';

/// The root widget of the application.
///
/// This widget initializes the MaterialApp and sets the theme for the
/// application.
/// It also defines the home page of the application.
class MyApp extends StatelessWidget {
  /// Constructs a new instance of the MyApp widget.
  const MyApp();

  /// Builds the UI for the application.
  ///
  /// This method returns a MaterialApp widget, which serves as the root of the
  /// application.
  /// It sets the theme for the application using ThemeData and specifies the
  /// home page.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
