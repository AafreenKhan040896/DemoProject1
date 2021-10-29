import 'package:flutter/material.dart';

class JobDescription extends StatefulWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: Card(
          shadowColor: Colors.blueGrey,
          child: (Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            margin: const EdgeInsets.symmetric(),
            padding: const EdgeInsets.symmetric(),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Job Description',
                  style: TextStyle(fontSize: 15),
                )),
          ))),
    );
  }
}
