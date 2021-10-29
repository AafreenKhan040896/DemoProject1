// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';


class SkillsDropDownButton extends StatefulWidget {
  const SkillsDropDownButton({Key? key}) : super(key: key);

  @override
  State<SkillsDropDownButton> createState() => _SkillsDropDown();
}

class _SkillsDropDown extends State<SkillsDropDownButton> {
  late String initSkills;

  List<String> listItem = [
    'C#',
    'Python',
    'Java',
    '.Net Core',
    'ASP.Net',
    'MVC',
    'JavaScript',
    'JQuery',
    'Ajax',
    'Angular Js',
    'Angular',
    'React Js',
    'TypeScript',
    'HTML',
    'CSS',
    'BootStrap',
    'Spring',
    'Hibernate',
  ];
  
   @override
  void initState(){
    super.initState();
    initSkills = listItem.first;
  }
  
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      alignedDropdown: true,
      child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
        value: initSkills,
        style: const TextStyle(color: Colors.deepPurple),
        onChanged: (value) {
          selectedSkill(value!);
        },
        items: listItem.map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      )),
    );
  }

 
  void selectedSkill(String skill){
    if(initSkills == skill){
      return;
    }
    setState(() {
      initSkills = skill;
    });
  }
}
