// ignore_for_file: must_be_immutable

import 'package:desktop_layout_view2/widgets/candidate_form.dart';
import 'package:desktop_layout_view2/widgets/company_profile.dart';
import 'package:desktop_layout_view2/widgets/job_description.dart';
import 'package:desktop_layout_view2/widgets/skillsTable.dart';
import 'package:desktop_layout_view2/widgets/submit_checkbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({Key? key}) : super(key: key);

  static const List<Widget> widgetList = [
    JobDescription(),
    CompanyProfile(), CandidateForm(), SkillsTable()];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          StaggeredGridView.extentBuilder(
            maxCrossAxisExtent: 200, 
            shrinkWrap: true,
            padding: const EdgeInsets.all(12.0),
            mainAxisSpacing: 24,
            crossAxisSpacing: 12,
            itemCount: widgetList.length,
            itemBuilder: (BuildContext context, int index) => widgetList[index],
            staggeredTileBuilder: (int index) => const StaggeredTile.extent(4, 300),
          ),
          const SubmitCheckBox()
        ],
      ),
    );
  }
}

/*class DesktopPage1 extends StatelessWidget {
  const DesktopPage1({Key? key}) : super(key: key);

  static const List<Widget> widgetList = [
    JobDescription(),
    CompanyProfile(), CandidateForm(), SkillsTable()];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children:  [
          StaggeredGridView.custom(
            childrenDelegate:const CompanyProfile(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(12.0), 
            gridDelegate: IndexedWidgetBuilder(),
          ),
          const SubmitCheckBox()
        ],
      ),
    );
  }
}
*/