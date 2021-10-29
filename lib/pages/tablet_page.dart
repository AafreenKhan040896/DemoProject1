// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TabletPage extends StatefulWidget {
  const TabletPage({Key? key}) : super(key: key);

  @override
  State<TabletPage> createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Welcome to Tablet View'),
    );
  }
}
