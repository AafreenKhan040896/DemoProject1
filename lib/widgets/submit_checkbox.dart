import 'package:flutter/material.dart';

class SubmitCheckBox extends StatefulWidget {
  const SubmitCheckBox({Key? key}) : super(key: key);

  @override
  State<SubmitCheckBox> createState() => _SubmitCheckBoxState();
}

class _SubmitCheckBoxState extends State<SubmitCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Expanded(
      child: Container(
        //width: (MediaQuery.of(context).size.width / 2),
        //height: 60,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        margin: const EdgeInsets.all(9.0),
        padding: const EdgeInsets.symmetric(),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                const Text(
                    'I certify that all the information above has been validated by me and is certified to be true'),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Save')),
                ElevatedButton(onPressed: () {}, child: const Text('Approve and Submit')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
