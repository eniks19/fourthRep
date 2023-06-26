import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IAppbar extends StatefulWidget {
  const IAppbar({super.key});

  @override
  State<IAppbar> createState() => _IAppbarState();
}

class _IAppbarState extends State<IAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}
