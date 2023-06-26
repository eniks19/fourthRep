import 'package:flutter/material.dart';

class MyGlobe extends StatefulWidget {
  const MyGlobe({super.key});

  @override
  State<MyGlobe> createState() => _MyGlobeState();
}

class _MyGlobeState extends State<MyGlobe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Zion'),
      ),
    );
  }
}
