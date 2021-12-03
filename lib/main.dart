import 'package:desktop_layout_view2/pages/mobile_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Views',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MobilePage()
    );
  }
}
