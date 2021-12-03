// ignore_for_file: file_names, must_be_immutable, must_call_super

import 'package:desktop_layout_view2/widgets/editable_field.dart';
import 'package:desktop_layout_view2/widgets/multiline_editable_field.dart';
import 'package:desktop_layout_view2/widgets/skills_dropdown.dart';
import 'package:flutter/material.dart';

class SkillsTable extends StatefulWidget {
  const SkillsTable({Key? key}) : super(key: key);

  @override
  State<SkillsTable> createState() => _SkillsTableState();
}

class _SkillsTableState extends State<SkillsTable>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(
            height: 40,
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              //width: (MediaQuery.of(context).size.width / 2),
              child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(5),
                    1: FlexColumnWidth(3),
                    2: FlexColumnWidth(3),
                    3: FlexColumnWidth(3),
                    4: FlexColumnWidth(6),
                  },
                  border: TableBorder.symmetric(
                      inside: const BorderSide(width: 2, color: Colors.black)),
                  children: [tableRow()]),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: ((MediaQuery.of(context).size.height / 2) - 33),
              child: Container(
                  height: ((MediaQuery.of(context).size.height / 2) - 33),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),

                  //width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(5),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(3),
                        3: FlexColumnWidth(3),
                        4: FlexColumnWidth(6),
                      },
                      border: TableBorder.symmetric(
                          inside:
                              const BorderSide(width: 2, color: Colors.black),
                          outside:
                              const BorderSide(width: 2, color: Colors.black)),
                      children: returnRows(5),
                    ),
                  )),
            ),
          ),
        ]));
  }

  TableRow tableRow() {
    return const TableRow(children: [
      TableCell(
          child: Text(
        'Skills',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      )),
      TableCell(
          child: Text(
        'Months',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      )),
      TableCell(
          child: Text(
        'Self\nScore',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      )),
      TableCell(
          child: Text(
        'Right\nScore',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      )),
      /*TableCell(
          child: Text(
        'Practice\nTest',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      )),*/
      TableCell(
          child: Text(
        'Notes',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      )),
    ]);
  }

  List<TableRow> returnRows(howManyRows) {
    List<TableRow> list = [];
    for (int i = 0; i < howManyRows; i++) {
      list.add(TableRow(children: [
        Expanded(
          child: TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [SkillsDropDownButton()])),
        ),
        const TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: EditableField()),
        const TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: EditableField()),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Coming Soon', textAlign: TextAlign.center)
                ])),
        /*const TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Text('www.google.com', textAlign: TextAlign.center)),*/
        const TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: MultilineEditableField()),
      ]));
    }
    return list;
  }

  @override
  bool get wantKeepAlive => true;
}
