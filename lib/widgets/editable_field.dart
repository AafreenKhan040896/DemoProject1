import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class EditableField extends StatefulWidget {
  const EditableField({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EditableFieldState();
}

class _EditableFieldState extends State<EditableField> {
  int initValue = 0;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '$initValue',
      decoration: const InputDecoration(
          border: InputBorder.none, hintText: 'Experience in Months'),
      onChanged: (value) => enteredValue,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }

  void enteredValue(int valueEntered) {
    setState(() {
      initValue = valueEntered;
    });
  }
}
