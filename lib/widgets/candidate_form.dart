// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:desktop_layout_view2/widgets/candidate_details.dart';

class CandidateForm extends StatelessWidget {
  static const String routeName = '/home';

  const CandidateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 200,
          height: 100,
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Center(child: ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CandidateDetails()));
              },
            )),
          ),
        );
  }
}
