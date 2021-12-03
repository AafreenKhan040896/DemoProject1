// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, must_call_super

import 'package:desktop_layout_view2/widgets/broswe_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CandidateForm extends StatefulWidget {
  static const String routeName = '/home';

  const CandidateForm({Key? key}) : super(key: key);

  @override
  State<CandidateForm> createState() => _CandidateFormState();
}

class _CandidateFormState extends State<CandidateForm>
    with AutomaticKeepAliveClientMixin {
  var enteredValue;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'About You',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              table(),
            ],
          ),
        ),
      ),
    );
  }

  Table table() {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(5),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(5)
      },
      children: [
        TableRow(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Name'),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: 'Enter Name'),
                onChanged: (value) => enteredValue,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Phone'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  counterText: "",
                  hintText: 'Contact Number',
                  border: InputBorder.none),
              onChanged: (value) => enteredValue,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 10,
            ),
          ],
        ),
        TableRow(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Email'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  counterText: "",
                  hintText: 'Enter Email',
                  border: InputBorder.none),
              onChanged: (value) => enteredValue,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Color'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  counterText: "",
                  border: InputBorder.none,
                  hintText: 'Fav Color'),
              onChanged: (value) => enteredValue,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
            ),
          ],
        ),
        TableRow(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Location'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Current Location',
              ),
              onChanged: (value) => enteredValue,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Work Location'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Work Location', border: InputBorder.none),
              onChanged: (value) => enteredValue,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter
              ],
            ),
          ],
        ),
        TableRow(
          children: [
            const SizedBox(),
            const BrowseButton(),
            const SizedBox(),
            ElevatedButton(
              child: const Text('Upload'),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}


