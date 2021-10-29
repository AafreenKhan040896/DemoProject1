import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MultilineEditableField extends StatefulWidget {
  const MultilineEditableField({Key? key}) : super(key: key);

  @override
  State<MultilineEditableField> createState() => _MultilineEditableFieldState();
}

class _MultilineEditableFieldState extends State<MultilineEditableField> {
  String initComments = '';
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initComments,
      decoration: const InputDecoration(
          border: InputBorder.none, hintText: 'Enter Comments'),
      keyboardType: TextInputType.multiline,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      textAlign: TextAlign.center,
      maxLength: 100,
      onChanged: (value) => enteredValue,
    );
  }

  void enteredValue(String commentsEntered) {
    setState(() {
      initComments = commentsEntered;
    });
  }
}
