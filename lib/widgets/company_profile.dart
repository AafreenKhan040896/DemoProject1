import 'package:flutter/material.dart';

class CompanyProfile extends StatefulWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
                  'Company Profile',
                  style: TextStyle(fontSize: 15),
                )),
          ))),
    );
  }
}
