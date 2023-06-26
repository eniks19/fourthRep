import 'package:flutter/material.dart';
import 'package:travel/components/content.dart';

class MyCompass extends StatefulWidget {
  const MyCompass({super.key});

  @override
  State<MyCompass> createState() => _MyCompassState();
}

class _MyCompassState extends State<MyCompass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.grey[850],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Activities',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            MyContent(),
          ],
        ),
      ),
    );
  }
}
