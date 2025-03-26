import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget home() {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(child: Text('This is the home screen')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoozeBuddy',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
      routes: {'/home': (context) => SplashScreen()},
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Welcome to BoozeBuddy!')));
  }
}
