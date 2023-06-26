import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[400],
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[850],
              ),
              child: DrawerHeader(
                  child: Center(
                child: Text(
                  'Travel App',
                  style: TextStyle(color: Colors.white),
                ),
              )),
            ),
            Text('Navigation'),
          ],
        ),
      ),
    );
  }
}
