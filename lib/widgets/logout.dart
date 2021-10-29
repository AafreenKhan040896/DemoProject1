// ignore_for_file: file_names
import 'package:flutter/material.dart';



class LogOut extends StatelessWidget{
  static const String routeName = '/logout';

  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LogOut'),),
      body: const Center(
        child: Text('Succesfully Logged Out!!!\nVisit Again!!'),
      )
      );
    
  }
 
}
