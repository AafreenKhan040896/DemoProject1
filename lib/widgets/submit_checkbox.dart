import 'package:flutter/material.dart';

class SubmitCheckBox extends StatefulWidget {
  const SubmitCheckBox({Key? key}) : super(key: key);

  @override
  State<SubmitCheckBox> createState() => _SubmitCheckBoxState();
}

class _SubmitCheckBoxState extends State<SubmitCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //width: (MediaQuery.of(context).size.width / 2),
        //height: 60,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        margin: const EdgeInsets.all(9.0),
        padding: const EdgeInsets.symmetric(),
        child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Submit Box',
              style: TextStyle(fontSize: 10),
            )),
      ),
    );
  }
}
