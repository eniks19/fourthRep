import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyBar extends StatefulWidget {
  const MyBar({super.key});

  @override
  State<MyBar> createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
