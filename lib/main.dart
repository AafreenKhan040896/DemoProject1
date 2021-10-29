import 'package:desktop_layout_view2/pages/desktop_page.dart';
import 'package:desktop_layout_view2/pages/mobile_page.dart';
import 'package:desktop_layout_view2/widgets/candidate_form.dart';
import 'package:desktop_layout_view2/widgets/settings.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => (MediaQuery.of(context).size.width < 600 ? const MobilePage() : const DesktopPage()) ,
        '/second': (context) => Settings(),
        
      },
    
    );
  }
}

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if(constraints.maxWidth < 600){
              return const MobilePage();
            }
            else{
              return const DesktopPage();
            } 
          }
        ),
      ),
    );
  }
}
